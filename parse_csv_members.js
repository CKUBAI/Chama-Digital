import fs from 'fs';

// Read the CSV file
const csvContent = fs.readFileSync('attached_assets/Shikunga 2010 Details.csv', 'utf8');

const members = [];

// The data appears to be in one long line with WSG entries, so we'll search for WSG patterns
const wsgMatches = csvContent.match(/WSG\d+,[^,]+,[^,]+,[^,]+,[^,]+,[^,]*,[^,]*/g);

if (wsgMatches) {
  wsgMatches.forEach(match => {
    const columns = match.split(',');
    
    if (columns.length >= 7) {
      const memberNumber = columns[0];
      const lastName = columns[1] || '';
      const firstName = columns[2] || '';
      const phone = columns[3] || '';
      const nextOfKinName = columns[4] || '';
      const nextOfKinId = columns[5] || '';
      const nextOfKinPhone = columns[6] || '';
      
      // Clean and validate the data
      const cleanPhone = phone.replace(/\s+/g, '').replace(/[^\d\/]/g, '');
      const cleanNextOfKinPhone = nextOfKinPhone.replace(/\s+/g, '').replace(/[^\d]/g, '');
      const cleanIdNumber = nextOfKinId.replace(/\s+/g, '').replace(/[^\d]/g, '');
      
      // Only add members with required data
      if (firstName && lastName && cleanPhone && nextOfKinName) {
        // Use first phone number if multiple provided
        const mainPhone = cleanPhone.split('/')[0];
        
        // Generate ID number based on member number to make it unique
        const memberNum = memberNumber.replace('WSG', '');
        const generatedId = `291${memberNum.padStart(5, '0')}`;
        
        members.push({
          firstName: firstName.trim(),
          lastName: lastName.trim(),
          idNumber: generatedId,
          phone: mainPhone.startsWith('0') ? mainPhone : '0' + mainPhone,
          email: '',
          address: '', // Will extract from longer data if available
          gender: '',
          nextOfKinName: nextOfKinName.trim(),
          nextOfKinPhone: cleanNextOfKinPhone.startsWith('0') ? cleanNextOfKinPhone : '0' + cleanNextOfKinPhone,
          nextOfKinRelationship: 'parent', // Default to parent
          nextOfKinId: cleanIdNumber || '',
          registrationFeePaid: false,
          status: 'active'
        });
      }
    }
  });
}

console.log(`Found ${members.length} members`);

// Create a properly formatted CSV for import
const csvHeader = 'first_name,last_name,id_number,phone,email,address,gender,next_of_kin_name,next_of_kin_phone,next_of_kin_relationship,next_of_kin_id';
const csvRows = members.map(member => 
  `"${member.firstName}","${member.lastName}","${member.idNumber}","${member.phone}","${member.email}","${member.address}","${member.gender}","${member.nextOfKinName}","${member.nextOfKinPhone}","${member.nextOfKinRelationship}","${member.nextOfKinId}"`
);

const formattedCsv = [csvHeader, ...csvRows].join('\n');
fs.writeFileSync('formatted_members.csv', formattedCsv);

// Also output as JSON for API upload
fs.writeFileSync('members.json', JSON.stringify(members, null, 2));

console.log('Files created: formatted_members.csv and members.json');
console.log('First 3 members:');
console.log(JSON.stringify(members.slice(0, 3), null, 2));