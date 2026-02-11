-- File: 06_select_data.sql
-- Topic: Selecting Data from a Table

USE student_db;

-- Select all records
SELECT * FROM students;

-- Select specific columns
SELECT name, department FROM students;

-- Use WHERE condition
SELECT * FROM students
WHERE age > 20;
