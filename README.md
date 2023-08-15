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
    name CARCHAR(20),
    PRIMARY KEY (student_id)
)
```

You can use the comand `DESCRIBE (table name)` , it will drescribe the 'Filed', 'Types', 'Null', 'Key', 'Default', 'Extra' of your database table. But you can also delete your database table with the comand `DROP TABLE (table name)`.

```sql
DESCRIBE student;
DROP TABLE student;
```
