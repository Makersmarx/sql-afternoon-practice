-- Step 1

CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT,
  height FLOAT,
  city TEXT NOT NULL,
  favorite_color TEXT NOT NULL
)

-- STEP 2 Create 5 different people

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Robert', 41, 200,'Turrialba', 'green')
('John', 36, 192,'San Jose', 'blue')
('Mike', 22, 172,'Cerventes', 'purple')
('Larry', 29, 179,'Pacayas', 'brown')
('Anna', 33, 188,'Cartago', 'yellow')

-- STEP 3 List all the people in the person table by height from tallest to shortest.

SELECT * FROM person ORDER BY height DESC

-- STEP 4 List all the people in the person table by height from shortest to tallest.

SELECT * FROM person ORDER BY height

-- STEP 5 List all the people in the person table by age from oldest to youngest.

SELECT * FROM person ORDER BY age DESC

-- STEP 6 List all the people in the person table older than age 20.

SELECT * FROM person
WHERE age > 20;

-- STEP 7 List all the people in the person table that are exactly 18.

SELECT * FROM person
WHERE age = 18;

-- STEP 8 List all the people in the person table that are less than 20 and older than 30.

SELECT * FROM person
WHERE age <= 20 OR age >= 30;

-- STEP 9 List all the people in the person table that are not 27 (Use not equals)

SELECT * FROM person
WHERE age != 27;

-- STEP 10 List all the people in the person table where their favorite color is not red.

SELECT * FROM person
WHERE favorite_color != 'red'

-- STEP 11 List all the people in the person table where their favorite color is not red and is not blue

SELECT * FROM person
WHERE favorite_color != 'blue' AND favorite_color != 'red'

-- STEP 12 List all the people in the person table where their favorite color is orange or green.

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green'

-- STEP 13 List all the people in the person table where their favorite color is orange, green or blue (use IN).

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- STEP 14 List all the people in the person table where their favorite color is yellow or purple (use IN).

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')

-- SECTION 2 Table - artist

-- STEP 1 Add 3 new artists to the artist table. ( It's already created see link )

INSERT INTO artist
(name)
VALUES
('RobertB'),
('Mikey'),
('Polly')


-- STEP 2 Select 10 artists in reverse alphabetical order.

SELECT name FROM artist
ORDER BY name DESC LIMIT 10;

-- STEP 3 Select 5 artists in alphabetical order.

SELECT name FROM artist
ORDER BY name LIMIT 5;

-- STEP 4 Select all artists that start with the word 'Black'.

SELECT * FROM artist
WHERE name LIKE 'Black%';


-- STEP 5 Select all artists that contain the word 'Black'.

SELECT * FROM artist
WHERE name LIKE '%Black%';


-- SECTION 3 TABLE - INVOICE

-- STEP 1 Count how many orders were made from the USA.

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';


-- STEP 2 Find the largest order total amount.

SELECT MAX(total) FROM invoice;

-- STEP 3 Find the smallest order total amount.

SELECT MIN(total) FROM invoice;

-- STEP 4 Find all orders bigger than $5.

SELECT * FROM invoice
WHERE total > 5;

-- STEP 5 Count how many orders were smaller than $5.

SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- STEP 6 Count how many orders were in CA, TX, or AZ (use IN).

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');


-- STEP 7 Get the average total of the orders.

SELECT AVG(total) FROM invoice

-- STEP 8 Get the total sum of the orders.

SELECT SUM(total) FROM invoice
