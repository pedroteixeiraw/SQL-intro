# SQL-intro

Basic data types:

```sql
INT             -- Whole Numbers
DECIMAL(M,N)    -- Dacimela Numbers (exact value)
VARCHAR(l)      -- String of text of lenght l
BLOB            -- Binary Large Object, Stores large data
DATE()          -- 'YYYY-MM-DD'
TIMESTAMP()     -- 'YYYY-MM-DD HH:MM:SS' - used for recording
```

Create a database table:

```sql

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR (20),
    major VARCHAR (20)
);
```

Or we can indicate the primary key at the end.
```sql
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR (20),
    PRIMARY KEY (student_id)
)
```

You can use the comand `DESCRIBE (table name)` , it will drescribe the 'Filed', 'Types', 'Null', 'Key', 'Default', 'Extra' of your database table. But you can also delete your database table with the comand `DROP TABLE (table name)`.

```sql
DESCRIBE student;
DROP TABLE student;
```

To alter a table, we can do this:

```sql
ALTER TABLE student ADD gpa DECIMAL(3, 2);
```

With this command we just added a new column 'gpa', with the data type 'DECIMAL(3,2)', this new column will have three digits, with two of the digits occuring after the decimal point.


Now that we have our table set up, we want to actually start inputting information. To input information we use the comand `INSERT`.

```sql
INSERT INTO student VALUES(1, 'Jack', 'Biology', 3.4);
```

To grad all the information from the student table we do:

```sql
SELECT * FROM student;
```
