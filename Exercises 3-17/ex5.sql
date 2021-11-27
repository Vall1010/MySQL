/*
The HR department wants a query to to display the last name and salary of employees who earn between $5,000 and $12,000, and are in department 20 or 50. Label the columns Employee and Monthly Salary, respectively.
*/
SELECT last_name "Employee", salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (20, 50);


/*
The HR department needs a report that displays the last name and hire date of all employees who were hired in 2006.
*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date >= '01-JAN-06' AND hire_date < '01-JAN-07';

/*
Create a report to display the last name, salary, and commission of all employees who earn commissions.
*/
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL

/*
Because of budget issues, the HR department needs a report that displays the last name and salary of employees who earn more than $12,000
*/
SELECT last_name, salary
FROM employees
WHERE salary > 12000;