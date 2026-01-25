CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT
);

INSERT INTO Employees VALUES
(1, 'Aakash', 'IT', 50000, 22),
(2, 'Neha', 'HR', 45000, 25),
(3, 'Rahul', 'IT', 60000, 28),
(4, 'Simran', 'Finance', 55000, 30),
(5, 'Aman', 'HR', 48000, 26);

SELECT * FROM Employees;

SELECT name, department FROM Employees;

SELECT * FROM Employees
WHERE department = 'IT';

SELECT * FROM Employees
WHERE salary > 50000 AND age > 25;

SELECT name, salary FROM Employees
ORDER BY salary DESC;

SELECT COUNT(*) FROM Employees;

SELECT SUM(salary) FROM Employees;

SELECT AVG(salary) FROM Employees;

SELECT MIN(salary), MAX(salary) FROM Employees;

SELECT department, COUNT(*) FROM Employees
GROUP BY department;

SELECT department, AVG(salary) FROM Employees
GROUP BY department;

SELECT department, AVG(salary) FROM Employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT department, COUNT(*) FROM Employees
WHERE age > 25
GROUP BY department
HAVING COUNT(*) > 1;
