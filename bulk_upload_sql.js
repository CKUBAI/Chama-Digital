import fs from 'fs';

// Read the generated SQL file and split into individual statements
const sqlContent = fs.readFileSync('upload_contributions.sql', 'utf8');
const statements = sqlContent.split(';').filter(stmt => stmt.trim() !== '');

// Group statements into batches of 20 for manageable execution
const batchSize = 20;
const batches = [];

for (let i = 0; i < statements.length; i += batchSize) {
  const batch = statements.slice(i, i + batchSize);
  batches.push(batch.join(';\n') + ';');
}

// Write batched SQL files
batches.forEach((batch, index) => {
  fs.writeFileSync(`batch_${index + 1}.sql`, batch);
});

console.log(`Created ${batches.length} batch files for SQL execution`);
console.log(`Total statements: ${statements.length}`);