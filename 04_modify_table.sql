-- File: 04_modify_table.sql
-- Topic: Modifying a Table

USE student_db;

-- Add a new column
ALTER TABLE students
ADD email VARCHAR(50);

-- Modify column datatype
ALTER TABLE students
MODIFY age SMALLINT;

-- Rename a column
ALTER TABLE students
RENAME COLUMN branch TO department;
