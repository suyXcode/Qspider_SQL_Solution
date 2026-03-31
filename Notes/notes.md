# SQL 














## 📌 What is DDL in Oracle SQL?

- DDL (Data Definition Language ) commands are used to define and manage the database structure.(Schema objects like tables, indexes, etc).

### 🔑 Common DDL Commands:
- **Create** - Create Objects.
- **ALTER** → Modify objects
- **DROP** → Delete objects
- **TRUNCATE** → Remove all records from a table
- **RENAME** → Rename objects


## 🧱 Example: CREATE TABLE (DDL Command)

Here’s a simple Oracle SQL DDL example 👇
```sql
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    course VARCHAR2(30),
    admission_date DATE
);
```
### 🔍 Explanation:
- CREATE TABLE → DDL command to create a table
- student_id NUMBER PRIMARY KEY → Unique ID for each student
- VARCHAR2 → Oracle-specific string datatype
- DATE → Stores date values



