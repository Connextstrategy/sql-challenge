-- 1. List employee info

SELECT employee.emp_no, 
employee.first_name,
employee.sex,
salaries.salary
FROM employee
LEFT JOIN salaries
ON employee.emp_no = salaries.emp_no
ORDER BY emp_no



-- 2. List employees hired in '87
SELECT emp_no, first_name, last_name, hire_date
FROM employee
WHERE DATE_PART('year', hire_date) = 1987
ORDER BY emp_no;


-- 3. List manager info
SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employee.last_name, 
employee.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employee 
ON dept_manager.emp_no = employee.emp_no
ORDER BY emp_no

-- 4. List department info
SELECT
dept_emp.dept_no,
employee.emp_no,
employee.last_name,
employee.first_name,
departments.dept_name
FROM employee
INNER JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
ORDER BY employee.emp_no;

-- 5. Search for first name Hercules
SELECT 
employee.first_name,
employee.last_name,
employee.sex
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. Sales Department
SELECT 
employee.emp_no, 
employee.last_name, 
employee.first_name,
dept_emp.dept_no
FROM employee
LEFT JOIN dept_emp 
ON employee.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Sales';

-- 7. Sales and Development
SELECT
employee.emp_no, 
employee.last_name, 
employee.first_name,
departments.dept_name
FROM employee
LEFT JOIN dept_emp 
ON employee.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development')

-- 8. Last name frequency
SELECT last_name, COUNT(*) AS freq_count
FROM employee
GROUP BY last_name
ORDER BY freq_count DESC;