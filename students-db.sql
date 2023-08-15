/* Create DATABASE TABLE */
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY (student_id)
);

/* It will drescribe the 'Filed', 'Types', 'Null', 'Key', 'Default', 'Extra' ...*/
DESCRIBE student;

/* Inserting data into a database table */
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
/* Insert someone without a major.*/
INSERT INTO student(student_id, name) VALUES(3, 'Claire');

/* Grab all the information from the stident table. */
SELECT * FROM student;

