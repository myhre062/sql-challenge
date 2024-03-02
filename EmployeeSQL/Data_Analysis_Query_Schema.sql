-- Data Analysis Section:
-- 1. List the employee number, last name, first name, sex, and salary of each employee.

-- Run this section for the answer for question 1
SELECT -- we select these columns
    Employees.emp_no, 
    Employees.last_name, 
    Employees.first_name, 
    Employees.sex, 
    Salaries.salary 
FROM -- We need most of the data from Employees Table
    Employees
JOIN -- We need salary data from Salaries Table Join the Salaries to Employees
    Salaries 
ON -- Specify the column we need to join on. We need to join on Employee number so salries match with correct employee
    Employees.emp_no = Salaries.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

-- Run this section for the answer for question 2
SELECT -- Select data from these columns
	Employees.first_name,
	Employees.last_name,
	Employees.hire_date
FROM -- All data needed is in Employees Column
	Employees
WHERE -- Look at hire_date data and only grab the employees that were hired in 1986
	EXTRACT(YEAR FROM Employees.hire_date) = 1986; -- Learned this extract method from https://developer.salesforce.com/docs/atlas.en-us.bi_dev_guide_sql.meta/bi_dev_guide_sql/bi_sql_date_filter.htm
	
-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

-- Run this section for the answer for question 3
SELECT -- Select Appropriate data from appropriate table
    Departments.dept_no, 
    Departments.dept_name, 
    Dept_Manager.emp_no, 
    Employees.last_name, 
    Employees.first_name
FROM -- Start with Departments Table
    Departments
JOIN -- Add Dept_Manager onto Departments Table and make sure the dept_no match
    Dept_Manager ON Departments.dept_no = Dept_Manager.dept_no
JOIN -- Then add the employees table so we can get the firt and last name for the manager and ensure emplyee numbers match
    Employees ON Dept_Manager.emp_no = Employees.emp_no;	
	
-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-- Run this section for the answer for question 4
SELECT -- Select Appropriate data from appropriate table
    Dept_Emp.dept_no, 
    Employees.emp_no, 
    Employees.last_name, 
    Employees.first_name,
	Departments.dept_name
FROM -- Start with Employees Table
    Employees
JOIN -- Add Dept_Emp onto Employees Table and ensure emp_no matches
	Dept_Emp ON Employees.emp_no = Dept_Emp.emp_no
JOIN -- Then add Departments onto Dept_Emp and ensure dept_no matches
    Departments ON Dept_Emp.dept_no = Departments.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- Run this section for the answer for question 5
SELECT
	Employees.first_name,
	Employees.last_name,
	Employees.sex 
FROM
	Employees
WHERE
	Employees.first_name = 'Hercules' AND Employees.last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

-- Run this section for the answer for question 6
SELECT
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name
FROM -- Start with Employees Table
    Employees
JOIN -- Add Dept_Emp onto Employees Table and ensure emp_no matches
	Dept_Emp ON Employees.emp_no = Dept_Emp.emp_no
JOIN -- Then add Departments onto Dept_Emp and ensure dept_no matches
    Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE -- Only show employees in the sales deptartment
	Departments.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- Run this section for the answer for question 7
SELECT
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
FROM -- Start with Employees Table
    Employees
JOIN -- Add Dept_Emp onto Employees Table and ensure emp_no matches
	Dept_Emp ON Employees.emp_no = Dept_Emp.emp_no
JOIN -- Then add Departments onto Dept_Emp and ensure dept_no matches
    Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE -- Only show employees in the sales deptartment
	Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

-- Run this section for the answer for question 7
SELECT 
    Employees.last_name, 
    COUNT(last_name) AS name_count -- variable to count last name
FROM 
    Employees
GROUP BY 
    Employees.last_name -- Look at each last name
ORDER BY 
    name_count DESC;
