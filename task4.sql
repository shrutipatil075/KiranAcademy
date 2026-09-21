USE your_database_name;

SELECT * FROM employees
WHERE city = 'Pune';

SELECT * FROM employees
WHERE city = 'Mumbai';

SELECT * FROM employees
WHERE department = 'IT';

SELECT * FROM employees
WHERE department = 'HR';

SELECT * FROM employees
WHERE department = 'Sales';

SELECT * FROM employees
WHERE status = 'Active';

SELECT * FROM employees
WHERE status = 'Inactive';

SELECT * FROM employees
WHERE employee_id = 103;

SELECT * FROM employees
WHERE employee_name = 'Priya Sharma';

SELECT * FROM employees
WHERE salary = 35000;

SELECT * FROM employees
WHERE city != 'Pune';

SELECT * FROM employees
WHERE department <> 'Testing';

SELECT * FROM employees
WHERE salary > 40000;

SELECT * FROM employees
WHERE salary < 35000;

SELECT * FROM employees
WHERE salary >= 50000;

SELECT * FROM employees
WHERE salary <= 30000;

SELECT * FROM employees
WHERE joining_date > '2025-01-01';

SELECT * FROM employees
WHERE joining_date <= '2024-12-31';

SELECT * FROM employees
WHERE employee_id > 110;

SELECT employee_name, joining_date
FROM employees
WHERE joining_date >= '2026-01-01';

SELECT * FROM employees
WHERE city = 'Pune'
AND status = 'Active';

SELECT * FROM employees
WHERE department = 'IT'
AND salary > 50000;

SELECT * FROM employees
WHERE city = 'Mumbai'
AND status = 'Inactive';

SELECT * FROM employees
WHERE department = 'Sales'
AND city = 'Pune'
AND salary >= 42000;

SELECT * FROM employees
WHERE department = 'HR'
AND joining_date > '2025-06-01';

SELECT * FROM employees
WHERE status = 'Active'
AND salary >= 40000
AND salary <= 70000;

-- Task 27: Mumbai + Testing + salary > 38000
SELECT * FROM employees
WHERE city = 'Mumbai'
AND department = 'Testing'
AND salary > 38000;

-- Task 28: Active + joined on/after 2026-01-01 + salary > 45000
SELECT * FROM employees
WHERE status = 'Active'
AND joining_date >= '2026-01-01'
AND salary > 45000;


-- =========================================================
-- PART E — OR & NOT Operators
-- =========================================================

-- Task 29: Pune OR Mumbai
SELECT * FROM employees
WHERE city = 'Pune'
OR city = 'Mumbai';

SELECT * FROM employees
WHERE department = 'IT'
OR department = 'HR';

SELECT * FROM employees
WHERE salary < 32000
OR salary > 60000;

SELECT * FROM employees
WHERE city = 'Nashik'
OR salary > 55000;

SELECT * FROM employees
WHERE NOT department = 'HR';

SELECT * FROM employees
WHERE NOT status = 'Inactive';

SELECT * FROM employees
WHERE (city = 'Pune' OR city = 'Mumbai')
AND status = 'Active';

SELECT * FROM employees
WHERE city <> 'Pune'
AND salary > 40000;

SELECT * FROM employees
WHERE salary BETWEEN 35000 AND 55000;

SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 65000;

SELECT * FROM employees
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';

SELECT * FROM employees
WHERE employee_id BETWEEN 105 AND 115;

SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Sales');

SELECT * FROM employees
WHERE city IN ('Pune', 'Mumbai', 'Nagpur');

SELECT * FROM employees
WHERE department NOT IN ('Testing', 'Support');

SELECT * FROM employees
WHERE city NOT IN ('Mumbai', 'Nashik');

SELECT * FROM employees
WHERE employee_id IN (101, 105, 110, 115, 120);

SELECT * FROM employees
WHERE department IN ('IT', 'Sales')
AND salary BETWEEN 45000 AND 75000;

SELECT * FROM employees
WHERE employee_name LIKE 'A%';

SELECT * FROM employees
WHERE employee_name LIKE 'R%';

SELECT * FROM employees
WHERE employee_name LIKE '%a';

SELECT * FROM employees
WHERE employee_name LIKE '%sh%';

SELECT * FROM employees
WHERE employee_name LIKE 'P%a';

SELECT * FROM employees
WHERE employee_name LIKE '_____';

SELECT * FROM employees
WHERE employee_name LIKE '_a%';

SELECT * FROM employees
WHERE employee_name NOT LIKE 'R%';

SELECT * FROM employees
WHERE email IS NULL;

SELECT * FROM employees
WHERE email IS NOT NULL;

SELECT * FROM employees
WHERE city = 'Pune'
AND email IS NULL;

SELECT * FROM employees
WHERE status = 'Active'
AND email IS NOT NULL
AND salary > 40000;

SELECT * FROM employees
WHERE status = 'Active'
AND city IN ('Pune', 'Mumbai')
AND department IN ('IT', 'Sales')
AND salary BETWEEN 40000 AND 70000
AND joining_date > '2025-01-01';

SELECT * FROM employees
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
AND email IS NOT NULL
AND status = 'Active'
AND city IN ('Pune', 'Nashik');