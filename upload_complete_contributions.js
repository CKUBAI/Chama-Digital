import fs from 'fs';
import pkg from 'pg';
const { Pool } = pkg;

// Database connection
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

async function uploadCompleteContributions() {
  try {
    console.log('Starting upload of complete contribution data...');
    
    // Read the CSV file
    const csvContent = fs.readFileSync('attached_assets/Shikunga 2.csv', 'utf-8');
    const lines = csvContent.trim().split('\n');
    
    // Parse header to get column positions
    const header = lines[0].split(',');
    console.log('Header columns:', header.length);
    
    // Define the month columns and their corresponding years
    const monthColumns = [
      // 2023 data
      { col: 3, month: 'May', year: 2023 },
      { col: 4, month: 'June', year: 2023 },
      { col: 5, month: 'July', year: 2023 },
      { col: 6, month: 'August', year: 2023 },
      { col: 7, month: 'September', year: 2023 },
      { col: 8, month: 'October', year: 2023 },
      { col: 9, month: 'November', year: 2023 },
      { col: 10, month: 'December', year: 2023 },
      { col: 11, month: 'January', year: 2024 },
      { col: 12, month: 'February', year: 2024 },
      { col: 13, month: 'March', year: 2024 },
      { col: 14, month: 'April', year: 2024 },
      // 2024 registration and monthly data
      { col: 15, month: 'May', year: 2024 },
      { col: 16, month: 'June', year: 2024 },
      { col: 17, month: 'July', year: 2024 },
      { col: 18, month: 'August', year: 2024 },
      { col: 19, month: 'September', year: 2024 },
      { col: 20, month: 'October', year: 2024 },
      { col: 21, month: 'November', year: 2024 },
      { col: 22, month: 'December', year: 2024 },
      { col: 23, month: 'January', year: 2025 },
      { col: 24, month: 'February', year: 2025 },
      { col: 25, month: 'March', year: 2025 },
      { col: 26, month: 'April', year: 2025 },
      { col: 28, month: 'May', year: 2025 }
    ];
    
    let contributionsAdded = 0;
    let registrationFeesAdded = 0;
    
    for (let i = 1; i < lines.length; i++) {
      const row = lines[i].split(',');
      if (row.length < 3) continue;
      
      const memberNumber = row[0].trim();
      const memberName = row[1].trim();
      const reg2023Fee = row[2].trim();
      const reg2024Fee = row[14].trim(); // Registration column for 2024
      const reg2025Fee = row[27].trim(); // Registration column for 2025
      
      console.log(`Processing ${memberNumber} - ${memberName}`);
      
      // Find the member in the database
      const memberQuery = await pool.query(
        'SELECT id FROM members WHERE member_number = $1',
        [memberNumber]
      );
      
      if (memberQuery.rows.length === 0) {
        console.log(`Member ${memberNumber} not found in database, skipping...`);
        continue;
      }
      
      const memberId = memberQuery.rows[0].id;
      
      // Add 2023 registration fee
      if (reg2023Fee && reg2023Fee !== '' && !isNaN(parseFloat(reg2023Fee))) {
        const regAmount = parseFloat(reg2023Fee);
        const refCode = `REG_${memberNumber}_2023`;
        
        const existingReg = await pool.query(
          'SELECT id FROM contributions WHERE member_id = $1 AND type = $2 AND year = $3',
          [memberId, 'registration', 2023]
        );
        
        if (existingReg.rows.length === 0) {
          await pool.query(
            `INSERT INTO contributions (member_id, amount, type, status, month, year, payment_date, ref_code)
             VALUES ($1, $2, 'registration', 'completed', 'January', 2023, '2023-01-01', $3)`,
            [memberId, regAmount.toFixed(2), refCode]
          );
          registrationFeesAdded++;
        }
      }
      
      // Add 2024 registration fee if different from 2023
      if (reg2024Fee && reg2024Fee !== '' && reg2024Fee !== reg2023Fee && !isNaN(parseFloat(reg2024Fee))) {
        const regAmount = parseFloat(reg2024Fee);
        const refCode = `REG_${memberNumber}_2024`;
        
        const existingReg = await pool.query(
          'SELECT id FROM contributions WHERE member_id = $1 AND type = $2 AND year = $3',
          [memberId, 'registration', 2024]
        );
        
        if (existingReg.rows.length === 0) {
          await pool.query(
            `INSERT INTO contributions (member_id, amount, type, status, month, year, payment_date, ref_code)
             VALUES ($1, $2, 'registration', 'completed', 'January', 2024, '2024-01-01', $3)`,
            [memberId, regAmount.toFixed(2), refCode]
          );
          registrationFeesAdded++;
        }
      }
      
      // Add 2025 registration fee if exists
      if (reg2025Fee && reg2025Fee !== '' && !isNaN(parseFloat(reg2025Fee))) {
        const regAmount = parseFloat(reg2025Fee);
        const refCode = `REG_${memberNumber}_2025`;
        
        const existingReg = await pool.query(
          'SELECT id FROM contributions WHERE member_id = $1 AND type = $2 AND year = $3',
          [memberId, 'registration', 2025]
        );
        
        if (existingReg.rows.length === 0) {
          await pool.query(
            `INSERT INTO contributions (member_id, amount, type, status, month, year, payment_date, ref_code)
             VALUES ($1, $2, 'registration', 'completed', 'January', 2025, '2025-01-01', $3)`,
            [memberId, regAmount.toFixed(2), refCode]
          );
          registrationFeesAdded++;
        }
      }
      
      // Process monthly contributions
      for (const monthInfo of monthColumns) {
        const amount = row[monthInfo.col];
        if (amount && amount.trim() !== '' && !isNaN(parseFloat(amount))) {
          const contributionAmount = parseFloat(amount.trim());
          
          // Create payment date
          const monthIndex = [
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
          ].indexOf(monthInfo.month) + 1;
          
          const paymentDate = `${monthInfo.year}-${String(monthIndex).padStart(2, '0')}-01`;
          const refCode = `${memberNumber}_${monthInfo.month.substring(0,3)}-${monthInfo.year.toString().substring(2)}`;
          
          // Check if contribution already exists
          const existing = await pool.query(
            'SELECT id FROM contributions WHERE member_id = $1 AND month = $2 AND year = $3 AND type = $4',
            [memberId, monthInfo.month, monthInfo.year, 'monthly']
          );
          
          if (existing.rows.length === 0) {
            await pool.query(
              `INSERT INTO contributions (member_id, amount, type, status, month, year, payment_date, ref_code)
               VALUES ($1, $2, 'monthly', 'completed', $3, $4, $5, $6)`,
              [memberId, contributionAmount.toFixed(2), monthInfo.month, monthInfo.year, paymentDate, refCode]
            );
            contributionsAdded++;
          }
        }
      }
    }
    
    console.log(`\nUpload completed successfully!`);
    console.log(`Registration fees added: ${registrationFeesAdded}`);
    console.log(`Monthly contributions added: ${contributionsAdded}`);
    console.log(`Total records added: ${registrationFeesAdded + contributionsAdded}`);
    
  } catch (error) {
    console.error('Error uploading contributions:', error);
  } finally {
    await pool.end();
  }
}

uploadCompleteContributions();