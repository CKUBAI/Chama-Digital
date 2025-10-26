import fs from 'fs';
import { Pool } from '@neondatabase/serverless';

// Database connection
const pool = new Pool({ connectionString: process.env.DATABASE_URL });

async function uploadContributions() {
  try {
    // Read the CSV file
    const csvData = fs.readFileSync('attached_assets/Shikunga.csv', 'utf8');
    
    // Parse the data - it appears to be in one continuous line
    const rawData = csvData.replace(/\r/g, '').trim();
    
    // Split by WSG pattern to identify member entries
    const memberEntries = rawData.split(/(?=WSG\d{3})/g).filter(entry => entry.trim() !== '');
    
    console.log(`Found ${memberEntries.length} member entries`);
    
    // Define the expected column structure based on CSV header
    const monthColumns = [
      { name: 'May-24', year: 2024, month: 5 },
      { name: 'Jun-24', year: 2024, month: 6 },
      { name: 'Jul-24', year: 2024, month: 7 },
      { name: 'Aug-24', year: 2024, month: 8 },
      { name: 'Sep-24', year: 2024, month: 9 },
      { name: 'Oct-24', year: 2024, month: 10 },
      { name: 'Nov-24', year: 2024, month: 11 },
      { name: 'Dec-24', year: 2024, month: 12 },
      { name: 'Jan-25', year: 2025, month: 1 },
      { name: 'Feb-25', year: 2025, month: 2 },
      { name: 'Mar-25', year: 2025, month: 3 },
      { name: 'Apr-25', year: 2025, month: 4 },
      { name: 'May-25', year: 2025, month: 5 }
    ];
    
    // Process each member entry
    for (const entry of memberEntries) {
      const parts = entry.split(',').map(p => p.trim());
      
      if (parts.length < 3 || !parts[0].startsWith('WSG')) continue;
      
      const memberNumber = parts[0];
      const memberName = parts[1];
      const registrationFee = parts[2];
      
      console.log(`Processing: ${memberNumber} - ${memberName}`);
      
      // Find member in database
      const memberQuery = await pool.query(
        'SELECT id FROM members WHERE member_number = $1 AND chama_id = 1',
        [memberNumber]
      );
      
      if (memberQuery.rows.length === 0) {
        console.log(`Member not found: ${memberNumber} - ${memberName}`);
        continue;
      }
      
      const memberId = memberQuery.rows[0].id;
      
      // Update registration fee payment status if there's a fee
      if (registrationFee && registrationFee !== '' && !isNaN(registrationFee) && parseFloat(registrationFee) > 0) {
        await pool.query(
          'UPDATE members SET registration_fee_paid = true WHERE id = $1',
          [memberId]
        );
        console.log(`Updated registration for ${memberNumber}: KES ${registrationFee}`);
      }
      
      // Process monthly contributions (starting from index 3)
      for (let i = 0; i < monthColumns.length && (i + 3) < parts.length; i++) {
        const amount = parts[i + 3]?.trim();
        const monthInfo = monthColumns[i];
        
        if (amount && amount !== '' && !isNaN(amount) && parseFloat(amount) > 0) {
          // Create contribution date (first day of the month)
          const contributionDate = new Date(monthInfo.year, monthInfo.month - 1, 1);
          
          // Check if contribution already exists
          const existingContribution = await pool.query(
            `SELECT id FROM contributions 
             WHERE member_id = $1 
             AND EXTRACT(YEAR FROM contribution_date) = $2 
             AND EXTRACT(MONTH FROM contribution_date) = $3`,
            [memberId, monthInfo.year, monthInfo.month]
          );
          
          if (existingContribution.rows.length === 0) {
            // Insert new contribution
            await pool.query(
              `INSERT INTO contributions (member_id, chama_id, amount, contribution_date, month, year, payment_method, status)
               VALUES ($1, 1, $2, $3, $4, $5, 'mpesa', 'confirmed')`,
              [memberId, parseFloat(amount), contributionDate, monthInfo.name.split('-')[0], monthInfo.year]
            );
            
            console.log(`Added contribution: ${memberNumber} - ${monthInfo.name} - KES ${amount}`);
          } else {
            console.log(`Contribution already exists: ${memberNumber} - ${monthInfo.name}`);
          }
        }
      }
    }
    
    console.log('Contribution upload completed successfully!');
    
  } catch (error) {
    console.error('Error uploading contributions:', error);
  } finally {
    await pool.end();
  }
}

// Run the upload
uploadContributions();