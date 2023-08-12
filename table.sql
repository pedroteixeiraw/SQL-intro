-- Query1 
-- 1st define DATABASE scheme
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

--Query2
CREATE TABLE student (
    student_id INT ,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

-- Show table
DESCRIBE student;

-- Delete a table 
DROP TABLE student;

-- Add column
ALTER TABLE student ADD gpa DECIMAL(3, 2);

-- Delete column
ALTER TABLE student DROP COLUMN gpa;

-- Inserting data
INSERT INTO student VALUES(1, 'Jack', 'Biology');

-- See inserted data
SELECT * FROM student;

-- One more student
INSERT INTO student VALUES(2, 'Kate', 'Sociology');

-- Add student w/ major
INSERT INTO student(student_id, name) VALUES (3, 'Claire')
