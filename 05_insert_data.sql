-- File: 05_insert_data.sql
-- Topic: Inserting Data into a Table

USE student_db;

-- Insert single record
INSERT INTO students
VALUES (1, 'Aditya', 'CSE', 20, 'aditya@gmail.com');

-- Insert multiple records
INSERT INTO students
VALUES
(2, 'Rahul', 'ECE', 21, 'rahul@gmail.com'),
(3, 'Sneha', 'IT', 19, 'sneha@gmail.com');
