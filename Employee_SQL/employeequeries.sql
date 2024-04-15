
SELECT e.emp_no,e.last_name,e.first_name,e.sex, s.salary FROM employees AS e 
LEFT JOIN salaries AS s  ON e.emp_no=s.emp_no;


SELECT 	first_name,	last_name,hire_date FROM employees
WHERE hire_date::TEXT LIKE '1986-__-__';



SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name FROM employees e
INNER JOIN dept_manager AS dm  ON e.emp_no = dm.emp_no
INNER JOIN departments AS d ON  dm.dept_no = d.dept_no;


   
select de.dept_no,e.emp_no,e.first_name,e.last_name,d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no;



select first_name,last_name,sex from employees
where first_name = 'Hercules' and last_name like 'B%';



SELECT e.emp_no, e.last_name, e.first_name,d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


SELECT  e.emp_no, e.last_name, e.first_name,d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development';


SELECT last_name,COUNT(last_name) AS frequency FROM employees 
GROUP BY last_name
ORDER BY 2 DESC;
