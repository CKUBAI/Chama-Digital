// Extract member data from the document based on visible structure
const members = [
  {
    firstName: "ANDAYI",
    lastName: "ERICK", 
    idNumber: "29458406",
    phone: "0707831347",
    email: "",
    address: "Ikolomani, Eregi, Murrum",
    gender: "",
    nextOfKinName: "Emmanuel Mutsami",
    nextOfKinPhone: "0715891472",
    nextOfKinRelationship: "parent",
    nextOfKinId: "38000000", // Scientific notation 3.8E+07 approximation
    registrationFeePaid: false,
    status: "active"
  },
  {
    firstName: "XAVIER",
    lastName: "NGAIRA",
    idNumber: "29555788", 
    phone: "0703963873",
    email: "",
    address: "Lurambi, shirere, shisasari",
    gender: "",
    nextOfKinName: "Rebecca Nechesa",
    nextOfKinPhone: "0727430322",
    nextOfKinRelationship: "spouse",
    nextOfKinId: "33000000", // Scientific notation 3.3E+07 approximation
    registrationFeePaid: false,
    status: "active"
  }
];

console.log(`Parsed ${members.length} members`);
console.log('First few members:');
console.log(JSON.stringify(members.slice(0, 3), null, 2));

// Output as CSV
const csvHeader = 'first_name,last_name,id_number,phone,email,address,gender,next_of_kin_name,next_of_kin_phone,next_of_kin_relationship,next_of_kin_id';
const csvRows = members.map(member => 
  `"${member.firstName}","${member.lastName}","${member.idNumber}","${member.phone}","${member.email}","${member.address}","${member.gender}","${member.nextOfKinName}","${member.nextOfKinPhone}","${member.nextOfKinRelationship}","${member.nextOfKinId}"`
);

const csvContent = [csvHeader, ...csvRows].join('\n');
fs.writeFileSync('members.csv', csvContent);
console.log('CSV file created: members.csv');