## Aim
To understand and implement SQL `SELECT` queries using various clauses such as `WHERE`, `ORDER BY`, `GROUP BY`, and `HAVING` to retrieve and manipulate data efficiently from relational database tables.

---

## Table Structure

The `Employees` table stores basic employee information such as ID, name, department, salary, and age.

```sql
CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT
);
```
## Data Insertion

Sample records inserted into the Employees table for practice.
```sql
INSERT INTO Employees VALUES
(1, 'Aakash', 'IT', 50000, 22),
(2, 'Neha', 'HR', 45000, 25),
(3, 'Rahul', 'IT', 60000, 28),
(4, 'Simran', 'Finance', 55000, 30),
(5, 'Aman', 'HR', 48000, 26);
```

##SQL Queries and Explanation

1. Display All Records
```sql
SELECT * FROM Employees;
```

Retrieves all rows and columns from the table.

2. Display Specific Columns
```sql
SELECT name, department FROM Employees;
```
Shows employee names and their respective departments.

3. Filter Records Using WHERE
```sql
SELECT * FROM Employees
WHERE department = 'IT';
```

Displays employees belonging to the IT department.

4. Apply Multiple Conditions
```sql
SELECT * FROM Employees
WHERE salary > 50000 AND age > 25;
```

Retrieves employees with salary greater than 50,000 and age above 25.

5. Sort Records Using ORDER BY
```sql
SELECT name, salary FROM Employees
ORDER BY salary DESC;
```

Displays employees sorted by salary in descending order.

Aggregate Functions
6. Count Total Employees
```sql
SELECT COUNT(*) FROM Employees;
```

7. Calculate Total Salary
```sql
SELECT SUM(salary) FROM Employees;
```

8. Calculate Average Salary
```sql
SELECT AVG(salary) FROM Employees;
```

9. Find Minimum and Maximum Salary
```sql
SELECT MIN(salary), MAX(salary) FROM Employees;
GROUP BY and HAVING Clauses
```
10. Count Employees in Each Department
```sql
SELECT department, COUNT(*) FROM Employees
GROUP BY department;
```

11. Calculate Average Salary per Department
```sql
SELECT department, AVG(salary) FROM Employees
GROUP BY department;
```

12. Departments with Average Salary Greater Than 50,000
```sql
SELECT department, AVG(salary) FROM Employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

13. Departments with More Than One Employee Above Age 25
```sql
SELECT department, COUNT(*) FROM Employees
WHERE age > 25
GROUP BY department
HAVING COUNT(*) > 1;
```

## Conclusion

This practical demonstrates the use of SQL SELECT queries along with filtering, sorting, grouping, and aggregation techniques. These concepts are essential for efficient data retrieval and analysis in relational database systems.

## Tools Used

SQL (MySQL / PostgreSQL / Oracle compatible)

## Learning Outcome

Creation of database tables

Insertion of records into tables

Data filtering using WHERE

Sorting results using ORDER BY

Use of aggregate functions

Grouping data using GROUP BY

Filtering grouped results using HAVING