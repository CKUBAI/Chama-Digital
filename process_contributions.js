import fs from 'fs';

// Read and process the CSV file
const csvData = fs.readFileSync('attached_assets/Shikunga.csv', 'utf8');
const rawData = csvData.replace(/\r/g, '').trim();

// Split by WSG pattern to identify member entries
const memberEntries = rawData.split(/(?=WSG\d{3})/g).filter(entry => entry.trim() !== '');

console.log(`Found ${memberEntries.length} member entries`);

// Define the expected column structure
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

let sqlStatements = [];

// Process each member entry
for (const entry of memberEntries) {
  const parts = entry.split(',').map(p => p.trim());
  
  if (parts.length < 3 || !parts[0].startsWith('WSG')) continue;
  
  const memberNumber = parts[0];
  const memberName = parts[1];
  const registrationFee = parts[2];
  
  console.log(`Processing: ${memberNumber} - ${memberName}`);
  
  // Update registration fee if exists
  if (registrationFee && registrationFee !== '' && !isNaN(registrationFee) && parseFloat(registrationFee) > 0) {
    sqlStatements.push(`
      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = '${memberNumber}' AND chama_id = 1;
    `);
  }
  
  // Process monthly contributions (starting from index 3)
  for (let i = 0; i < monthColumns.length && (i + 3) < parts.length; i++) {
    const amount = parts[i + 3]?.trim();
    const monthInfo = monthColumns[i];
    
    if (amount && amount !== '' && !isNaN(amount) && parseFloat(amount) > 0) {
      // Create contribution date (first day of the month)
      const contributionDate = `${monthInfo.year}-${monthInfo.month.toString().padStart(2, '0')}-01`;
      
      sqlStatements.push(`
        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, ${parseFloat(amount)}, 'monthly', '${contributionDate}', '${monthInfo.name.split('-')[0]}', ${monthInfo.year}, 'confirmed', 'AUTO_${memberNumber}_${monthInfo.name}'
        FROM members m 
        WHERE m.member_number = '${memberNumber}' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = ${monthInfo.year} 
          AND EXTRACT(MONTH FROM c.payment_date) = ${monthInfo.month}
        );
      `);
    }
  }
}

// Write SQL file
const sqlContent = sqlStatements.join('\n');
fs.writeFileSync('upload_contributions.sql', sqlContent);

console.log(`Generated ${sqlStatements.length} SQL statements in upload_contributions.sql`);