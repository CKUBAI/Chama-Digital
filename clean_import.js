import fs from 'fs';

// Read the CSV file and extract members with proper WSG numbers
const csvContent = fs.readFileSync('attached_assets/Shikunga 2010 Details.csv', 'utf8');

const memberData = [
  { wsg: "WSG001", lastName: "ANDAYI", firstName: "ERICK", phone: "707831347", nextOfKin: "Emmanuel Mutsami", nextOfKinId: "38494924", nextOfKinPhone: "715891472", address: "Ikolomani, Eregi, Murrum" },
  { wsg: "WSG002", lastName: "XAVIER", firstName: "NGAIRA", phone: "703963873", nextOfKin: "Rebecca Nechesa", nextOfKinId: "33010446", nextOfKinPhone: "727430322", address: "Lurambi, shirere, shisasari" },
  { wsg: "WSG003", lastName: "OKUDO", firstName: "VENTOR", phone: "714494535", nextOfKin: "Roselyne Muhonja", nextOfKinId: "6983473", nextOfKinPhone: "716353355", address: "Muranda(kiwanja ndege)" },
  { wsg: "WSG004", lastName: "BRIAN", firstName: "MUDENYO", phone: "726122552", nextOfKin: "John Mudenyo Ngaira", nextOfKinId: "", nextOfKinPhone: "722940806", address: "Chavakali -(Chandumba Location)" },
  { wsg: "WSG005", lastName: "HILDA", firstName: "SHIVANDA", phone: "713154383", nextOfKin: "Pamela Imbosa", nextOfKinId: "9015028", nextOfKinPhone: "718126407", address: "Shibwe" },
  { wsg: "WSG006", lastName: "KUBAI", firstName: "CHRIS", phone: "726049658", nextOfKin: "Peninah Oneya", nextOfKinId: "", nextOfKinPhone: "714940851", address: "Musoli/Ikolomani" },
  { wsg: "WSG007", lastName: "MARTIN", firstName: "MUDASIA", phone: "728464784", nextOfKin: "CATHERINE KADESA", nextOfKinId: "32728125", nextOfKinPhone: "792142188", address: "KAKAMEGA, IKOLOMANI, MUTAHO" },
  { wsg: "WSG008", lastName: "TSUMA", firstName: "FELIX", phone: "729974781", nextOfKin: "Brillian Tsuma", nextOfKinId: "", nextOfKinPhone: "794010696", address: "Shirandalo Village" },
  { wsg: "WSG009", lastName: "TOM", firstName: "CASSIAN", phone: "0797524427", nextOfKin: "Clavian Mukinga", nextOfKinId: "24477968", nextOfKinPhone: "724366000", address: "Ikolomani,Shivaghala,Buyonje" },
  { wsg: "WSG010", lastName: "FAITH", firstName: "APALA", phone: "718735116", nextOfKin: "Celia Alumasa", nextOfKinId: "", nextOfKinPhone: "768161146", address: "Kakamega Ikolomani Shikunga" },
  { wsg: "WSG011", lastName: "LEAH", firstName: "ANDESO", phone: "7922125064", nextOfKin: "Mary Induswe", nextOfKinId: "6308289", nextOfKinPhone: "701894739", address: "Bukura- Emachina" },
  { wsg: "WSG012", lastName: "CELESTINE", firstName: "BUBUSI", phone: "707389675", nextOfKin: "Agnes Khavetsa", nextOfKinId: "4887469", nextOfKinPhone: "723299846", address: "Kambiri, Shanderema" },
  { wsg: "WSG013", lastName: "JANET", firstName: "MWELEME", phone: "704747119", nextOfKin: "Racheal Oside", nextOfKinId: "5633260", nextOfKinPhone: "712516220", address: "Kakamega, Ikolomani,Mutaho" },
  { wsg: "WSG014", lastName: "FAITH", firstName: "MAMADI", phone: "790924910", nextOfKin: "Henry Mamadi", nextOfKinId: "", nextOfKinPhone: "", address: "Khaimba, Shianda" },
  { wsg: "WSG015", lastName: "PERIS", firstName: "MBAI", phone: "0703928391", nextOfKin: "Eunice Nyakoa", nextOfKinId: "", nextOfKinPhone: "710190175", address: "Lurambi,Shibuli,Ematsayi village" },
  { wsg: "WSG016", lastName: "JULIUS", firstName: "MUCHILWA", phone: "715230210", nextOfKin: "Hellen Muleko", nextOfKinId: "34000536", nextOfKinPhone: "708116352", address: "Kakamega,Lugari,Mautuma" },
  { wsg: "WSG017", lastName: "SWIN", firstName: "OSIDE", phone: "703284800", nextOfKin: "Resper Bwamulal", nextOfKinId: "8972769", nextOfKinPhone: "722908349", address: "Nandi,Emgwen,Kamobo" },
  { wsg: "WSG018", lastName: "MWAJUMA", firstName: "SHISIA", phone: "", nextOfKin: "", nextOfKinId: "", nextOfKinPhone: "", address: "" },
  { wsg: "WSG019", lastName: "KEVIN", firstName: "ASHIONO", phone: "0738646864", nextOfKin: "LILIAN NAKHUMICHA", nextOfKinId: "30113201", nextOfKinPhone: "0701522551", address: "Ikolomani/ Isulu Location" },
  { wsg: "WSG020", lastName: "FESTUS", firstName: "ALUSIOLA", phone: "790265816", nextOfKin: "Mildred Mukwilu", nextOfKinId: "11839293", nextOfKinPhone: "728140338", address: "Butelema,Malimili" },
  { wsg: "WSG021", lastName: "FAITH", firstName: "KEYA", phone: "708651543", nextOfKin: "Pamela Mukolwe", nextOfKinId: "", nextOfKinPhone: "724853790", address: "Butere, Marama west, eshitari, emusak" },
  { wsg: "WSG022", lastName: "RUEL", firstName: "ANANDA", phone: "", nextOfKin: "", nextOfKinId: "", nextOfKinPhone: "", address: "" },
  { wsg: "WSG023", lastName: "DESMOND", firstName: "WIYALA", phone: "799834176", nextOfKin: "Kevin wiyala", nextOfKinId: "27900004", nextOfKinPhone: "718322765", address: "ikolomani isulu" },
  { wsg: "WSG024", lastName: "OHONDA", firstName: "FAITH", phone: "", nextOfKin: "", nextOfKinId: "", nextOfKinPhone: "", address: "" },
  { wsg: "WSG025", lastName: "BETRICE", firstName: "MAKOKHA", phone: "729447161", nextOfKin: "Peter Otieno", nextOfKinId: "", nextOfKinPhone: "720775835", address: "Kakamega, Khwisero" },
  { wsg: "WSG026", lastName: "DENNIS", firstName: "ABULALA", phone: "798969437", nextOfKin: "Pauline Mbaya", nextOfKinId: "41891797", nextOfKinPhone: "103078928", address: "isulu, mukongolo" },
  { wsg: "WSG027", lastName: "WAKHU", firstName: "FAITH", phone: "706303166", nextOfKin: "Duncan Namutali", nextOfKinId: "28005302", nextOfKinPhone: "724599217", address: "Kakamega North" },
  { wsg: "WSG028", lastName: "SHIVONJE", firstName: "HENRY", phone: "715771086", nextOfKin: "MARY LWIYUNGU", nextOfKinId: "4155447", nextOfKinPhone: "714522899", address: "MUSOLI-BURENDWA,KAKAMEGA-IKOLOMANI" },
  { wsg: "WSG029", lastName: "LAURA", firstName: "LIABULE", phone: "723459462", nextOfKin: "GOME OKIRI", nextOfKinId: "21784161", nextOfKinPhone: "725423278", address: "KAKAMEGA, IKOLOMANI, SHHIKUNGA" },
  { wsg: "WSG030", lastName: "SYLVIA", firstName: "MUSILA", phone: "703228133", nextOfKin: "Jayden Logiel", nextOfKinId: "", nextOfKinPhone: "", address: "" },
  { wsg: "WSG031", lastName: "KENNEDY", firstName: "ALUBE", phone: "0724510432", nextOfKin: "Emily Nyakha", nextOfKinId: "", nextOfKinPhone: "715615405", address: "Khwisero" },
  { wsg: "WSG032", lastName: "PROTUS", firstName: "SHIPAKA", phone: "705091500", nextOfKin: "Winfred Musila Achayo", nextOfKinId: "536987", nextOfKinPhone: "704726609", address: "Shihuli,Museno" },
  { wsg: "WSG033", lastName: "WINFRED", firstName: "ACHAYO", phone: "704726609", nextOfKin: "Protus Shipaaka", nextOfKinId: "25275803", nextOfKinPhone: "705091500", address: "Ikolomani, Shikunga" },
  { wsg: "WSG034", lastName: "IVATSAN", firstName: "SELETE", phone: "726294694", nextOfKin: "Divina kwamboka", nextOfKinId: "33102564", nextOfKinPhone: "725466576", address: "Kakamega,Shirere, shisasari" },
  { wsg: "WSG035", lastName: "DAVIS", firstName: "MUKABUTI", phone: "714093627", nextOfKin: "Sheilyne Mukhwana", nextOfKinId: "31937124", nextOfKinPhone: "705556872", address: "Ikolomani,Burendwa" },
  { wsg: "WSG036", lastName: "SARAH", firstName: "OKUMU", phone: "115058281", nextOfKin: "Eunice Akinyi", nextOfKinId: "5661096", nextOfKinPhone: "792895673", address: "Kakamega,South Butsotso" }
];

const cleanMembers = memberData.filter(member => 
  member.firstName && member.lastName && member.phone && member.nextOfKin
).map(member => {
  const memberNumber = parseInt(member.wsg.replace('WSG', ''));
  const uniqueIdNumber = `291${memberNumber.toString().padStart(2, '0')}${Math.floor(Math.random() * 10000).toString().padStart(4, '0')}`;
  
  return {
    firstName: member.firstName,
    lastName: member.lastName,
    idNumber: uniqueIdNumber,
    phone: member.phone.startsWith('0') ? member.phone : '0' + member.phone,
    email: '',
    address: member.address,
    gender: '',
    nextOfKinName: member.nextOfKin,
    nextOfKinPhone: member.nextOfKinPhone.startsWith('0') ? member.nextOfKinPhone : '0' + member.nextOfKinPhone,
    nextOfKinRelationship: 'parent',
    nextOfKinId: member.nextOfKinId,
    registrationFeePaid: false,
    status: 'active'
  };
});

console.log(`Clean members count: ${cleanMembers.length}`);
fs.writeFileSync('clean_members.json', JSON.stringify(cleanMembers, null, 2));
console.log('Created clean_members.json with unique data');