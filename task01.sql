CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Task 3
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);

-- Tasks 4-5
DESC employees;
SHOW TABLES;

-- Tasks 6-11
INSERT INTO employees VALUES
(101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active'),
(102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active'),
(103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active'),
(105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');

-- Tasks 12-30
SELECT * FROM employees;
SELECT employee_name FROM employees;
SELECT employee_name, salary FROM employees;
SELECT employee_name, department, city FROM employees;
SELECT * FROM employees WHERE city = 'Pune';
SELECT * FROM employees WHERE city = 'Mumbai';
SELECT * FROM employees WHERE department = 'Development';
SELECT * FROM employees WHERE department = 'Testing';
SELECT * FROM employees WHERE status = 'Active';
SELECT * FROM employees WHERE status = 'Inactive';
SELECT * FROM employees WHERE employee_id = 103;
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE salary < 40000;
SELECT * FROM employees WHERE salary = 35000;
SELECT * FROM employees WHERE salary >= 42000;
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees WHERE department = 'Development' AND salary > 45000;
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';

-- Tasks 31-38
-- Each statement includes employee_id so it works with Safe Update Mode.
UPDATE employees SET salary = 48000 WHERE employee_id = 101;
UPDATE employees SET status = 'Active' WHERE employee_id = 105;
UPDATE employees SET city = 'Pune' WHERE employee_id = 104;
UPDATE employees SET department = 'Development' WHERE employee_id = 102;
UPDATE employees SET salary = 45000 WHERE employee_id = 106;
UPDATE employees SET salary = salary + 3000 WHERE employee_id = 103;
UPDATE employees SET salary = salary + 2000 WHERE employee_id = 106;
UPDATE employees SET city = 'Mumbai Branch' WHERE employee_id IN (102, 105);

-- Tasks 39-43
DELETE FROM employees WHERE employee_id = 105;
DELETE FROM employees WHERE employee_id = 105 AND employee_name = 'Rohan Deshmukh';
DELETE FROM employees WHERE employee_id = 105 AND status = 'Inactive';
DELETE FROM employees WHERE employee_id IN (101, 102, 103, 104, 105, 106) AND salary < 30000;
DELETE FROM employees WHERE employee_id = 104;

-- Tasks 44-50
ALTER TABLE employees ADD email VARCHAR(100);
ALTER TABLE employees ADD mobile VARCHAR(15);
ALTER TABLE employees MODIFY city VARCHAR(100);
ALTER TABLE employees RENAME COLUMN employee_name TO name;
ALTER TABLE employees DROP COLUMN mobile;
ALTER TABLE employees ADD experience INT;
UPDATE employees SET experience = 3 WHERE employee_id = 101;

-- Tasks 51-60
DROP TABLE IF EXISTS company_departments;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO departments VALUES
(1, 'Development', 'Pune'),
(2, 'Testing', 'Mumbai'),
(3, 'HR', 'Nashik');

SELECT * FROM departments;

UPDATE departments
SET location = 'Bangalore'
WHERE department_id = 1;

DELETE FROM departments
WHERE department_id = 3;

RENAME TABLE departments TO company_departments;

DESC company_departments;

TRUNCATE TABLE company_departments;

DROP TABLE company_departments;

SHOW TABLES;