/* Create DATABASE TABLE */
/* NOT NULL and UNIQUE are comstraints */
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,  -- This field can't be NULL
    major VARCHAR(20) UNIQUE,   -- This field can't have duplicates
    PRIMARY KEY (student_id)    -- A primary key is both Not NULL and UNIQUE.
);

/* More constraints */
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',  -- major field if empty it will be 'undecided'
    PRIMARY KEY (student_id)    
);

/* Auto increment student_id
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY (student_id)    
);
*/

/* Drop all table */
DROP TABLE student;

/* It will drescribe the 'Field', 'Types', 'Null', 'Key', 'Default', 'Extra' ...*/
DESCRIBE student;

/* Grab all the information from the stident table. */
SELECT * FROM student;

/* Inserting data into a database table */
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');           -- Error! 'major' field can't be NULL
INSERT INTO student VALUES(4, 'Jack', 'Biology');           -- Error! Duplicate entry 'Biology' for key 'major'
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

/* Insert someone without a major.*/
INSERT INTO student(student_id, name) VALUES(3, 'Claire');  -- major not included, so it will be 'undecided' as default

/* Inserting data into the table w/ AUTO INCREMENT */
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, 'Claire', 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

/* Update rows*/
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'BioChemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

UPDATE student
SET major = 'undecided';

/* Delete rows */
DELETE FROM student;

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

SELECT * FROM student;

/*
other comparision ops:
=   :equals
<>  :not equals
>   :greater than
<   :less than
>=  :greater than or equal
<=  :less than or equal
*/


/* Basic Queries */
SELECT *        -- '*' all coloumns in the table
FROM student;

SELECT name
FROM student;

SELECT name, major
FROM student;

SELECT student.name, student.major
FROM student;

/* Order the information we get back */
SELECT student.name, student.major
FROM student
ORDER BY name DESC; -- 'DESC' descending order

SELECT *
FROM student
ORDER BY student_id ASC; -- 'ASC' ascending order

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
LIMIT 2;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;


/* Filtering */
SELECT *
FROM student
WHERE major = 'Chemistry';

SELECT name, major
FROM student
WHERE major = 'Chemistry' OR major = 'Biology';

-- <, >, <=, >=, =, <>, AND, OR
-- <> is not equal

SELECT name, major
FROM student
WHERE major <> 'Chemistry';

SELECT *
FROM student
WHERE student_id <= 3 AND name <> 'Jack';

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike') AND student_id > 2;
