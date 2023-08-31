SELECT 
	E.emp_no, 
	last_name,
	first_name,
	sex,
	salary
FROM "Employees" AS E
INNER JOIN "Salaries" AS S ON E.emp_no = S.emp_no;

SELECT 
	first_name,
	last_name,
	hire_date
FROM "Employees" 
WHERE hire_date between '1986-01-01' AND '1986-12-31';

SELECT 
	D.dept_no,
	D.dept_name,
	DM.emp_no,
	E.last_name,
	E.first_name
FROM "Departments" AS D
INNER JOIN "Dept_Manager" AS DM ON D.dept_no = DM.dept_no
INNER JOIN "Employees" AS E ON DM.emp_no = E.emp_no

SELECT
	D.dept_no,
	D.dept_name,
	E.emp_no,
	E.last_name,
	E.first_name
FROM "Departments" AS D
INNER JOIN "Dept_Emp" AS DE ON D.dept_no = DE.dept_no
INNER JOIN "Employees" AS E ON DE.emp_no = E.emp_no;

SELECT 
	first_name,
	last_name,
	sex
FROM 
	"Employees"
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
SELECT 
	E.emp_no,
	E.last_name,
	E.first_name,
	D.dept_name
FROM "Employees" AS E
INNER JOIN "Dept_Emp" AS DE ON E.emp_no = DE.emp_no
INNER JOIN "Departments" AS D ON DE.dept_no = D.dept_no
WHERE D.dept_name= 'Sales';

SELECT
	E.emp_no,
	E.last_name,
	E.first_name,
	D.dept_name
FROM "Employees" AS E
INNER JOIN "Dept_Emp" AS DE ON E.emp_no = DE.emp_no
INNER JOIN "Departments" AS D ON DE.dept_no = D.dept_no
WHERE D.dept_name IN ('Sales', 'Development');

SELECT
	last_name,
	COUNT (*) AS frequency
FROM 
	"Employees"
GROUP BY
	last_name
ORDER BY
	frequency DESC;






