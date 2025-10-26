
      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG001' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG001_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG001_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG001_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG001_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG001_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG001_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG001_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG001_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG001_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG001_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG001_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG001_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG001' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG002' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG002_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG002_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG002_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG002_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG002_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG002_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG002_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG002_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG002_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG002_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG002_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG002_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG002' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG003' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG003_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG003_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG003_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG003_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG003_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG003_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG003_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG003_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG003_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG003_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG003_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG003' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG005' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG005_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG005_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG005_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG005_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG005_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG005_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG005_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG005_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG005_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG005_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG005' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG006' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG006_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG006_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG006_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG006_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG006_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG006_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG006_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG006_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG006_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG006_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG006_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG006_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-05-01', 'May', 2025, 'confirmed', 'AUTO_WSG006_May-25'
        FROM members m 
        WHERE m.member_number = 'WSG006' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG007' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG007_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG007_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG007_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG007_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG007_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG007_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG007_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG007_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG007_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG007_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG007_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG007_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG007' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG008' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG008_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG008_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG008_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG008_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG008_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG008_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG008_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG008_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG008_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG008_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG008_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG008' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG009' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG009_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG009_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG009_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG009_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG009_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG009_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG009_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG009_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG009_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG009_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG009_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG009_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG009' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG010' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG010_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG010_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG010_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG010_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG010_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG010_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG010_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG010_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG010_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG010_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG010' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG011' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG011_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG011' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG011_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG011' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG012' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG012_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG012_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG012_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG012_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG012_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG012_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG012_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG012_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG012_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG012_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG012' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG013' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG013_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG013_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG013_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG013_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG013_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG013_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG013_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG013_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG013_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG013_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG013_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG013_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG013' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG015' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG015_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG015_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG015_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG015_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG015_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG015_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG015_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG015_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG015_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG015_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG015_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG015_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-05-01', 'May', 2025, 'confirmed', 'AUTO_WSG015_May-25'
        FROM members m 
        WHERE m.member_number = 'WSG015' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG016' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG016_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG016_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG016_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG016_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG016_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG016_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG016_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG016' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG017' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG017_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG017_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG017_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG017_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG017_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG017_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG017_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG017_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG017_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG017_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG017_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG017_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-05-01', 'May', 2025, 'confirmed', 'AUTO_WSG017_May-25'
        FROM members m 
        WHERE m.member_number = 'WSG017' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG018' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG018_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG018' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG018_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG018' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG019' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG019_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG019_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG019_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG019_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG019_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG019_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG019_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG019' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG020' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG020_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG020_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG020_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG020_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG020_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG020_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG020_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG020_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG020_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG020' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG022' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG022_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG022' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG022_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG022' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG022_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG022' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG023' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG023_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG023' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG023_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG023' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG023_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG023' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG023_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG023' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG023_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG023' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG024' AND chama_id = 1;
    

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG025' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG025_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG025' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG025_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG025' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG025_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG025' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG025_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG025' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG025_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG025' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG026' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG026_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG026' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG026_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG026' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG026_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG026' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG026_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG026' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG026_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG026' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG026_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG026' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG028' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG028_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG028_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG028_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG028_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG028_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG028_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG028_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG028_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG028_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG028_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG028_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG028_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG028' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG029' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG029_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG029_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG029_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG029_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG029_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG029_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG029_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG029_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG029_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG029_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG029_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG029_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-05-01', 'May', 2025, 'confirmed', 'AUTO_WSG029_May-25'
        FROM members m 
        WHERE m.member_number = 'WSG029' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG031' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG031_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG031_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG031_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG031_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG031_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG031_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG031_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 100, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG031_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG031' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG032' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG032_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG032_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG032_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG032_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG032_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG032_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG032_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG032_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG032_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG032_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG032' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG033' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG033_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG033_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG033_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG033_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG033_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG033_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG033_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG033_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG033_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG033_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG033' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG034' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG034_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG034' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG034_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG034' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG035' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG035_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG035_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG035_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG035_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG035_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG035_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG035_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG035_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG035_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG035_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG035_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG035' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

      UPDATE members 
      SET registration_fee_paid = true 
      WHERE member_number = 'WSG036' AND chama_id = 1;
    

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-05-01', 'May', 2024, 'confirmed', 'AUTO_WSG036_May-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 5
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-06-01', 'Jun', 2024, 'confirmed', 'AUTO_WSG036_Jun-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 6
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-07-01', 'Jul', 2024, 'confirmed', 'AUTO_WSG036_Jul-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 7
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-08-01', 'Aug', 2024, 'confirmed', 'AUTO_WSG036_Aug-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 8
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-09-01', 'Sep', 2024, 'confirmed', 'AUTO_WSG036_Sep-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 9
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-10-01', 'Oct', 2024, 'confirmed', 'AUTO_WSG036_Oct-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 10
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-11-01', 'Nov', 2024, 'confirmed', 'AUTO_WSG036_Nov-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 11
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2024-12-01', 'Dec', 2024, 'confirmed', 'AUTO_WSG036_Dec-24'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2024 
          AND EXTRACT(MONTH FROM c.payment_date) = 12
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-01-01', 'Jan', 2025, 'confirmed', 'AUTO_WSG036_Jan-25'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 1
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-02-01', 'Feb', 2025, 'confirmed', 'AUTO_WSG036_Feb-25'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 2
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-03-01', 'Mar', 2025, 'confirmed', 'AUTO_WSG036_Mar-25'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 3
        );
      

        INSERT INTO contributions (member_id, amount, type, payment_date, month, year, status, ref_code)
        SELECT m.id, 200, 'monthly', '2025-04-01', 'Apr', 2025, 'confirmed', 'AUTO_WSG036_Apr-25'
        FROM members m 
        WHERE m.member_number = 'WSG036' AND m.chama_id = 1
        AND NOT EXISTS (
          SELECT 1 FROM contributions c 
          WHERE c.member_id = m.id 
          AND EXTRACT(YEAR FROM c.payment_date) = 2025 
          AND EXTRACT(MONTH FROM c.payment_date) = 4
        );
      