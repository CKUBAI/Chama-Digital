import fs from 'fs';
import pkg from 'pg';
const { Pool } = pkg;

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

async function uploadRemainingContributions() {
  try {
    console.log('Uploading remaining contribution data...');
    
    const csvContent = fs.readFileSync('attached_assets/Shikunga 2.csv', 'utf-8');
    const lines = csvContent.trim().split('\n');
    
    const monthColumns = [
      { col: 3, month: 'May', year: 2023 }, { col: 4, month: 'June', year: 2023 },
      { col: 5, month: 'July', year: 2023 }, { col: 6, month: 'August', year: 2023 },
      { col: 7, month: 'September', year: 2023 }, { col: 8, month: 'October', year: 2023 },
      { col: 9, month: 'November', year: 2023 }, { col: 10, month: 'December', year: 2023 },
      { col: 11, month: 'January', year: 2024 }, { col: 12, month: 'February', year: 2024 },
      { col: 13, month: 'March', year: 2024 }, { col: 14, month: 'April', year: 2024 },
      { col: 15, month: 'May', year: 2024 }, { col: 16, month: 'June', year: 2024 },
      { col: 17, month: 'July', year: 2024 }, { col: 18, month: 'August', year: 2024 },
      { col: 19, month: 'September', year: 2024 }, { col: 20, month: 'October', year: 2024 },
      { col: 21, month: 'November', year: 2024 }, { col: 22, month: 'December', year: 2024 },
      { col: 23, month: 'January', year: 2025 }, { col: 24, month: 'February', year: 2025 },
      { col: 25, month: 'March', year: 2025 }, { col: 26, month: 'April', year: 2025 },
      { col: 28, month: 'May', year: 2025 }
    ];
    
    let contributionsAdded = 0;
    
    // Process from WSG010 onwards (since previous ones were processed)
    for (let i = 10; i < lines.length; i++) {
      const row = lines[i].split(',');
      if (row.length < 3) continue;
      
      const memberNumber = row[0].trim();
      const memberName = row[1].trim();
      
      const memberQuery = await pool.query(
        'SELECT id FROM members WHERE member_number = $1',
        [memberNumber]
      );
      
      if (memberQuery.rows.length === 0) continue;
      const memberId = memberQuery.rows[0].id;
      
      console.log(`Processing ${memberNumber} - ${memberName}`);
      
      // Process monthly contributions
      for (const monthInfo of monthColumns) {
        const amount = row[monthInfo.col];
        if (amount && amount.trim() !== '' && !isNaN(parseFloat(amount))) {
          const contributionAmount = parseFloat(amount.trim());
          
          const monthIndex = [
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
          ].indexOf(monthInfo.month) + 1;
          
          const paymentDate = `${monthInfo.year}-${String(monthIndex).padStart(2, '0')}-01`;
          const refCode = `${memberNumber}_${monthInfo.month.substring(0,3)}-${monthInfo.year.toString().substring(2)}`;
          
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
    
    console.log(`Additional contributions added: ${contributionsAdded}`);
    
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await pool.end();
  }
}

uploadRemainingContributions();