/*The HR department needs a query that prompts the user for an employee’s last name. 
The query then displays the last name and hire date of any employee in the same department as
the employee whose name the user supplies (excluding that employee)*/
SELECT last_name, hire_date
FROM employees
WHERE department_id = (SELECT department_id
FROM employees
WHERE last_name = '&&Enter_name')
AND last_name <> '&Enter_name';


/*
Create a report that displays the employee number, last name, and salary of all employees who earn more than the average salary. 
Sort the results in ascending order by salary
*/
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
FROM employees)
ORDER BY salary;

/*
Write a query that displays the employee number and last name of all employees who work
in a department with any employee whose last name contains the letter “u.”
*/
SELECT employee_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
FROM employees
WHERE last_name like '%u%');


/*
The HR department needs a report that displays the last name, department number, and
job ID of all employees whose department location ID is 1700.
*/

SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN (SELECT department_id
FROM departments
WHERE location_id = 1700);

/*
Create a report for HR that displays the last name and salary of every employee who
reports to King.
*/
SELECT last_name, salary
FROM employees
WHERE manager_id = (SELECT employee_id
FROM employees
WHERE last_name = 'King');

/*
Create a report for HR that displays the department number, last name, and job ID for every employee in the Executive department
*/
SELECT department_id, last_name, job_id
FROM employees
WHERE department_id IN (SELECT department_id
FROM departments
WHERE department_name =
'Executive');

/*
Create a report that displays a list of all employees whose salary is more than the salary of
any employee from department 60.
*/
SELECT last_name FROM employees
WHERE salary > ANY (SELECT salary
FROM employees
WHERE department_id=60);

