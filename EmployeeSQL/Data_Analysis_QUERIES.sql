-- DATA ANALYSIS --

-- After database is complete, filter details

------------------------------------------------------

-- 1. List details of each employee (employee number, last name, first name, gender, and salary)

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM "Employees" AS e
JOIN "Salaries" AS s
ON e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986

SELECT emp_no, last_name, first_name, hire_date
FROM "Employees"
WHERE hire_date::text LIKE '1986%';

-- 3. List details of each department's manager (department number, department name, the manager's employee number, last name, first name, and start and end employment dates)

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM "Departments" AS d
JOIN "Dept_Managers" AS dm
ON d.dept_no = dm.dept_no
JOIN "Employees" AS e
ON dm.emp_no = e.emp_no;

-- 4. List details of each employee and respective department info (employee number, last name, first name, and department name)

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Employees" AS de
JOIN "Employees" AS e
ON de.emp_no = e.emp_no
JOIN "Departments" AS d
ON de.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B"

SELECT first_name, last_name
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List details of all employees in the Sales department (employee number, last name, first name, and department name)

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Employees" AS de
JOIN "Employees" AS e
ON de.emp_no = e.emp_no
JOIN "Departments" AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. List details of all employees in the Sales and Development departments (employee number, last name, first name, and department name)

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Employees" AS de
JOIN "Employees" AS e
ON de.emp_no = e.emp_no
JOIN "Departments" AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development';

-- 8. List the frequency count of employee last names in descending order (how many employees share each last name)

SELECT last_name,
COUNT(last_name) AS "frequency_last_names"
FROM "Employees"
GROUP BY last_name
ORDER BY "frequency_last_names" DESC;