-- ## Task 1
-- SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- FROM public."Employees" AS e
-- INNER JOIN  public."Salaries" AS s ON
-- e.emp_no = s.emp_no;

-- ## Task 2
-- SELECT first_name, last_name, hire_date
-- FROM public."Employees"
-- WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- ## Task 3
-- SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
-- FROM public."Managers" AS m
-- INNER JOIN public."Departments" AS d ON
-- m.dept_no = d.dept_no
-- INNER JOIN public."Employees" AS e ON
-- m.emp_no = e.emp_no;

-- ## Task 4
-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM public."Employees" AS e
-- INNER JOIN public."Dept_Emp" AS de ON
-- e.emp_no = de.emp_no
-- INNER JOIN public."Departments" AS d ON
-- de.dept_no = d.dept_no;

-- ## Task 5
-- SELECT first_name, last_name, sex
-- FROM public."Employees"
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- ## Task 6
-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM public."Employees" AS e
-- INNER JOIN public."Dept_Emp" AS de ON
-- e.emp_no = de.emp_no
-- INNER JOIN public."Departments" AS d ON
-- de.dept_no = d.dept_no
-- WHERE d.dept_name = 'Sales';

-- ## Task 7
-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM public."Employees" AS e
-- INNER JOIN public."Dept_Emp" AS de ON
-- e.emp_no = de.emp_no
-- INNER JOIN public."Departments" AS d ON
-- de.dept_no = d.dept_no
-- WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- ## Task 8
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- SELECT last_name, COUNT (last_name)
-- FROM public."Employees"
-- GROUP BY last_name
-- ORDER BY COUNT (last_name) DESC;