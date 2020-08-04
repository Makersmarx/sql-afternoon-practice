-- STEP 1
SELECT * FROM artist;

-- STEP 2
SELECT first_name, last_name, country FROM employee;

--STEP 3
 SELECT name, composer, milliseconds FROM track
 WHERE milliseconds > 299000;

 --STEP 4
 SELECT COUNT(*) FROM track
 WHERE milliseconds > 299000;


-- EXTRA CREDIT
-- STEP 5
SELECT AVG(milliseconds) FROM track;

-- STEP 6
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- STEP 7
SELECT first_name FROM customers
WHERE first_name LIKE '%a%';

-- STEP 8

SELECT * FRom track
ORDER BY milliseconds DESC
LIMIT 10;
