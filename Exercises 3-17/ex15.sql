/*
The HR department needs a list of department IDs for departments that do not contain the
job ID ST_CLERK. Use the set operators to create this report
*/
SELECT department_id
FROM departments
MINUS
SELECT department_id
FROM employees
WHERE job_id = 'ST_CLERK';

/*
The HR department needs a list of countries that have no departments located in them.
Display the country IDs and the names of the countries. Use the set operators to create this
report.
*/
SELECT country_id,country_name
FROM countries
MINUS
SELECT l.country_id,c.country_name
FROM locations l JOIN countries c
ON (l.country_id = c.country_id)
JOIN departments d
ON d.location_id=l.location_id;


/*
Produce a list of jobs for departments 10, 50, and 20, in that order. Display job ID and
department ID using the set operators.
*/
SELECT distinct job_id, department_id
FROM employees
WHERE department_id = 10
UNION ALL
SELECT DISTINCT job_id, department_id
FROM employees
WHERE department_id = 50
UNION ALL
SELECT DISTINCT job_id, department_id
FROM employees
WHERE department_id = 20;

/*
Create a report that lists the employee IDs and job IDs of those employees who currently
have a job title that is the same as their previous one (that is, they changed jobs but have
now gone back to doing the same job they did previously).
*/
SELECT employee_id,job_id
FROM employees
INTERSECT
SELECT employee_id,job_id
FROM job_history;

/*
The HR department needs a report with the following specifications:
• Last names and department IDs of all employees from the EMPLOYEES table,
regardless of whether or not they belong to a department
• Department IDs and department names of all departments from the DEPARTMENTS
table, regardless of whether or not they have employees working in them
Write a compound query to accomplish this report.
*/
SELECT last_name,department_id,TO_CHAR(null)dept_name
FROM employees
UNION
SELECT TO_CHAR(null),department_id,department_name
FROM departments;