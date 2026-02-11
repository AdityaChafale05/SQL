-- File: 08_delete_data.sql
-- Topic: Deleting Data from a Table

USE student_db;

-- Delete a specific record
DELETE FROM students
WHERE student_id = 1;

-- Delete all records from table
DELETE FROM students;
