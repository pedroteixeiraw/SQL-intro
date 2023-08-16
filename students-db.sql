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

/* Auto increment student_id */
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY (student_id)    
);

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
