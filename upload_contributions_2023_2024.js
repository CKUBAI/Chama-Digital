import fs from 'fs';
import pkg from 'pg';
const { Pool } = pkg;

// Database connection
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

async function uploadContributions2023_2024() {
  try {
    console.log('Starting upload of contributions from May 2023 to April 2024...');
    
    // Read the CSV file
    const csvContent = fs.readFileSync('attached_assets/Shikunga 2.csv', 'utf-8');
    
    // Parse the CSV - it appears to be one long line, so we need to split it properly
    const lines = csvContent.trim().split('WSG');
    const header = lines[0];
    
    // Extract member data from the concatenated line
    const memberLines = [];
    for (let i = 1; i < lines.length; i++) {
      if (lines[i].trim()) {
        memberLines.push('WSG' + lines[i]);
      }
    }
    
    console.log(`Found ${memberLines.length} member records`);
    
    const months = [
      'May-23', 'Jun-23', 'Jul-23', 'Aug-23', 'Sep-23', 'Oct-23', 
      'Nov-23', 'Dec-23', 'Jan-24', 'Feb-24', 'Mar-24', 'Apr-24'
    ];
    
    let contributionsAdded = 0;
    let registrationFeesAdded = 0;
    
    for (const line of memberLines) {
      const parts = line.split(',');
      if (parts.length < 15) continue;
      
      const memberNumber = parts[0].trim();
      const memberName = parts[1].trim();
      const regFee = parts[2].trim();
      
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
      
      // Add registration fee if it exists and is not empty
      if (regFee && regFee !== '' && !isNaN(parseFloat(regFee))) {
        const regAmount = parseFloat(regFee);
        const regRefCode = `AUTO_${memberNumber}_REG-23`;
        
        // Check if registration already exists
        const existingReg = await pool.query(
          'SELECT id FROM contributions WHERE member_id = $1 AND type = $2 AND year = $3',
          [memberId, 'registration', 2023]
        );
        
        if (existingReg.rows.length === 0) {
          await pool.query(
            `INSERT INTO contributions (member_id, amount, type, status, month, year, payment_date, ref_code)
             VALUES ($1, $2, 'registration', 'completed', 'January', 2023, '2023-01-01', $3)`,
            [memberId, regAmount.toFixed(2), regRefCode]
          );
          registrationFeesAdded++;
          console.log(`Added registration fee of ${regAmount} for ${memberNumber}`);
        }
      }
      
      // Process monthly contributions
      for (let i = 0; i < months.length; i++) {
        const monthValue = parts[3 + i];
        if (monthValue && monthValue.trim() !== '' && !isNaN(parseFloat(monthValue))) {
          const amount = parseFloat(monthValue.trim());
          const monthYear = months[i];
          const [monthName, year] = monthYear.split('-');
          const fullYear = year === '23' ? 2023 : 2024;
          
          // Convert month abbreviation to full name
          const monthMap = {
            'May': 'May',
            'Jun': 'June', 
            'Jul': 'July',
            'Aug': 'August',
            'Sep': 'September',
            'Oct': 'October',
            'Nov': 'November',
            'Dec': 'December',
            'Jan': 'January',
            'Feb': 'February',
            'Mar': 'March',
            'Apr': 'April'
          };
          
          const fullMonthName = monthMap[monthName] || monthName;
          const monthIndex = Object.keys(monthMap).indexOf(monthName) + (fullYear === 2023 ? 5 : 1);
          const paymentDate = `${fullYear}-${String(monthIndex).padStart(2, '0')}-01`;
          const refCode = `AUTO_${memberNumber}_${monthName}-${year}`;
          
          // Check if contribution already exists
          const existing = await pool.query(
            'SELECT id FROM contributions WHERE member_id = $1 AND month = $2 AND year = $3 AND type = $4',
            [memberId, fullMonthName, fullYear, 'monthly']
          );
          
          if (existing.rows.length === 0) {
            await pool.query(
              `INSERT INTO contributions (member_id, amount, type, status, month, year, payment_date, ref_code)
               VALUES ($1, $2, 'monthly', 'completed', $3, $4, $5, $6)`,
              [memberId, amount.toFixed(2), fullMonthName, fullYear, paymentDate, refCode]
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

uploadContributions2023_2024();