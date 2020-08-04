CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(32),
    phone_number INT
);


-- INSERT STATETMENT

INSERT INTO students
(name, email, phone_number)
VALUES
('Spongebob', 'frycook@krusty.krab', 9002569634),
('Squidward', 'squidy@gmail.com', 9853624578),
('Patrick', 'Partick.com', 9874563526 );

--SELECT STATETMENT

SELECT * FROM students;

SELECT * FROM students
WHERE id = 2;

SELECT name, email FROM students;

SELECT * FROM students
WHERE name IN ('Spongebob', 'Squidward')

-- SQL FUNCTIONS

SELECT COUNT(*) FROM track;

SELECT SUM(milliseconds) FROM track;

SELECT MAX(milliseconds) FROM track;
SELECT MIN (milliseconds) FROM track;

SELECT AVG(unit_price) FROM track;

-- UPDATE STATETMENT

UPDATE students
SET name = 'Robert'
WHERE id = 3

-- DELETE STATETMENT

DELETE from students
WHERE id = 1;


-- DROP STATETMENT

DROP TABLE students;

DROP TABLE IF EXISTS students;
