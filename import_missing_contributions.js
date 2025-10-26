import fs from 'fs';
import pkg from 'pg';
const { Pool } = pkg;

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

async function importMissingContributions() {
  try {
    // Read the CSV file
    const csvContent = fs.readFileSync('./attached_assets/Shikunga 2.csv', 'utf8');
    const lines = csvContent.split('\n').filter(line => line.trim());
    
    // Skip header row
    const dataLines = lines.slice(1).filter(line => line.trim());
    
    console.log('Starting import of missing contributions...');
    
    for (const line of dataLines) {
      const columns = line.split(',');
      const memberNumber = columns[0]?.trim();
      const memberName = columns[1]?.trim();
      
      if (!memberNumber || !memberNumber.startsWith('WSG')) continue;
      
      // Get member ID from database
      const memberResult = await pool.query(
        'SELECT id FROM members WHERE member_number = $1',
        [memberNumber]
      );
      
      if (memberResult.rows.length === 0) {
        console.log(`Member not found: ${memberNumber}`);
        continue;
      }
      
      const memberId = memberResult.rows[0].id;
      
      // Check if member already has contributions
      const existingContributions = await pool.query(
        'SELECT COUNT(*) as count FROM contributions WHERE member_id = $1',
        [memberId]
      );
      
      if (existingContributions.rows[0].count > 0) {
        console.log(`${memberNumber} already has contributions, skipping...`);
        continue;
      }
      
      console.log(`Importing contributions for ${memberNumber} - ${memberName}`);
      
      // Define the column mappings
      const months = [
        { col: 2, year: 2023, month: 'Registration', date: '2023-01-01', type: 'registration' },
        { col: 3, year: 2023, month: 'May', date: '2023-05-01', type: 'monthly' },
        { col: 4, year: 2023, month: 'June', date: '2023-06-01', type: 'monthly' },
        { col: 5, year: 2023, month: 'July', date: '2023-07-01', type: 'monthly' },
        { col: 6, year: 2023, month: 'August', date: '2023-08-01', type: 'monthly' },
        { col: 7, year: 2023, month: 'September', date: '2023-09-01', type: 'monthly' },
        { col: 8, year: 2023, month: 'October', date: '2023-10-01', type: 'monthly' },
        { col: 9, year: 2023, month: 'November', date: '2023-11-01', type: 'monthly' },
        { col: 10, year: 2023, month: 'December', date: '2023-12-01', type: 'monthly' },
        { col: 11, year: 2024, month: 'January', date: '2024-01-01', type: 'monthly' },
        { col: 12, year: 2024, month: 'February', date: '2024-02-01', type: 'monthly' },
        { col: 13, year: 2024, month: 'March', date: '2024-03-01', type: 'monthly' },
        { col: 14, year: 2024, month: 'April', date: '2024-04-01', type: 'monthly' },
        { col: 15, year: 2024, month: 'Registration', date: '2024-01-01', type: 'registration' },
        { col: 16, year: 2024, month: 'May', date: '2024-05-01', type: 'monthly' },
        { col: 17, year: 2024, month: 'June', date: '2024-06-01', type: 'monthly' },
        { col: 18, year: 2024, month: 'July', date: '2024-07-01', type: 'monthly' },
        { col: 19, year: 2024, month: 'August', date: '2024-08-01', type: 'monthly' },
        { col: 20, year: 2024, month: 'September', date: '2024-09-01', type: 'monthly' },
        { col: 21, year: 2024, month: 'October', date: '2024-10-01', type: 'monthly' },
        { col: 22, year: 2024, month: 'November', date: '2024-11-01', type: 'monthly' },
        { col: 23, year: 2024, month: 'December', date: '2024-12-01', type: 'monthly' },
        { col: 24, year: 2025, month: 'January', date: '2025-01-01', type: 'monthly' },
        { col: 25, year: 2025, month: 'February', date: '2025-02-01', type: 'monthly' },
        { col: 26, year: 2025, month: 'March', date: '2025-03-01', type: 'monthly' },
        { col: 27, year: 2025, month: 'April', date: '2025-04-01', type: 'monthly' },
        { col: 28, year: 2025, month: 'Registration', date: '2025-01-01', type: 'registration' },
        { col: 29, year: 2025, month: 'May', date: '2025-05-01', type: 'monthly' }
      ];
      
      // Process each month
      for (const monthInfo of months) {
        const amount = columns[monthInfo.col]?.trim();
        
        if (amount && amount !== '' && !isNaN(parseFloat(amount))) {
          const amountValue = parseFloat(amount);
          const refCode = monthInfo.type === 'registration' 
            ? `REG_${memberNumber}_${monthInfo.year}`
            : `${memberNumber}_${monthInfo.month.substring(0,3)}-${String(monthInfo.year).substring(2)}`;
          
          await pool.query(`
            INSERT INTO contributions (
              member_id, amount, type, payment_date, month, year, 
              notes, status, ref_code, created_at
            ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, NOW())
          `, [
            memberId,
            amountValue.toFixed(2),
            monthInfo.type,
            monthInfo.date,
            monthInfo.month,
            monthInfo.year,
            null,
            'completed',
            refCode
          ]);
          
          console.log(`  Added ${monthInfo.type} ${amountValue} for ${monthInfo.month} ${monthInfo.year}`);
        }
      }
    }
    
    console.log('Import completed successfully!');
    
  } catch (error) {
    console.error('Error importing contributions:', error);
  } finally {
    await pool.end();
  }
}

importMissingContributions();