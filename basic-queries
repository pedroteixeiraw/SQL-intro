SELECT * -- * = all columns 
FROM students;

-- SELECT = get informantion

/*
-- Order by name
SELECT name, major
FROM students
ORDER BY name;
*/

SELECT *
FROM students
ORDER BY student_id DESC;

SELECT *
FROM students
ORDER BY name, major DESC;

SELECT *
FROM students
ORDER BY student_id DESC
LIMIT 2;

/*
SELECT *
FROM students
WHERE major = 'Biology'
*/

--with where we can use <, >, <=, >=, AND, OR, <> (Not equal)
SELECT *
FROM students
WHERE student_id > 20  AND name <> 'Mike';

SELECT *
FROM students
WHERE name IN ('Claire', 'Kate', 'Mike') AND student_id > 20;
