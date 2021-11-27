/*
Create a report to display the last name, job ID, and hire date 
for employees with the last names of Matos or Taylor. 
Order the query in ascending order by hire date.
*/
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date;

/*
Members of the HR department want to have more flexibility with the queries that you are writing. 
They would like a report that displays the last name and salary of employees who earn more 
than an amount that the user specifies after a prompt. 
*/
SELECT last_name, salary
FROM employees
WHERE salary > &sal_amt;

/*
The HR department wants to run reports based on a manager. 
Create a query that prompts the user for a manager ID, and generates the employee ID, 
last name, salary, and department for that manager’s employees.
*/
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &mgr_num
ORDER BY &order_col;

/*
Display the last names of all employees who have both an “a” and an “e” in their last name.
Order the query in descending by salary
*/
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%'
ORDER BY salary DESC;