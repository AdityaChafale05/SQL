-- File: 07_update_data.sql
-- Topic: Updating Data in a Table

USE student_db;

-- Update a single record
UPDATE students
SET age = 22
WHERE student_id = 2;

-- Update multiple columns
UPDATE students
SET department = 'CSE', age = 21
WHERE student_id = 3;
