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


## 🛠️ 2. ALTER
- **👉 Used to modify existing table structure**

### **✅ Add Column:**
```sql

ALTER TABLE employees
ADD email VARCHAR2(100);
```

### **✅ Modify Column:**
```SQL
ALTER TABLE employees
MODIFY salary NUMBER(10,2);
```
### **✅ Drop Column:**
```SQL
ALTER TABLE employees
DROP COLUMN email;
```

## ❌ 3. DROP

**👉 Deletes entire object permanently**
✅ Example:

```SQL
DROP TABLE employees;
```
- 🚨 Warning: Data + structure both deleted

## 🧹 4. TRUNCATE

**👉 Removes all records from table (faster than DELETE)**
✅ Example:

```SQL

TRUNCATE TABLE employees;
```
- ✔ Keeps table structure
- ❌ Cannot rollback

## ✏️ 5. RENAME

## 👉 Rename database object
✅ Example:

```SQL
RENAME employees TO staff;
```


## 🔒 6. COMMENT
**👉 Add comments to table/column**
✅ Example:

```SQL
COMMENT ON TABLE employees IS 'Employee details table';

COMMENT ON COLUMN employees.name IS 'Employee Name';
```
## 🔄 7. FLASHBACK (Oracle specific)
**👉 Restore dropped table (if recycle bin enabled)**
✅ Example:

```SQL
FLASHBACK TABLE employees TO BEFORE DROP;
```

## 🧩 8. CREATE INDEX
**👉 Improve query performance**
✅ Example:
```SQL
CREATE INDEX idx_name
ON employees(name);
```
## 👁️ 9. CREATE VIEW
**👉 Virtual table based on query**
✅ Example:
```SQL
CREATE VIEW emp_view AS
SELECT name, salary FROM employees;

```

## 🔐 10. CREATE SEQUENCE
**👉 Auto-generate numbers (used for IDs)**
✅ Example:

```SQL
CREATE SEQUENCE emp_seq
START WITH 1
INCREMENT BY 1;
```

## 🎯 Key Characteristics of DDL

| Feature          | Description                 |
| ---------------- | --------------------------- |
| Auto Commit      | Changes saved automatically |
| No Rollback      | Cannot undo                 |
| Structure Change | Works on schema, not data   |
| Fast Execution   | Especially TRUNCATE         |




