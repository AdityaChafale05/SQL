-- File: 03_create_table.sql
-- Topic: Creating a Table

USE student_db;

-- Create a table named students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(30),
    age INT
);
