/*Write a query to display the number of people with the same job. (show the job_id and the number of people)
*/
SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

/*Determine the number of managers without listing them. Label the column Number of Managers*/
SELECT COUNT(DISTINCT manager_id) "Number of Managers"
FROM employees;

/*Find the difference between the highest and lowest salaries. Label the column DIFFERENCE*/
SELECT MAX(salary) - MIN(salary) DIFFERENCE
FROM employees;

/*Create a report to display the manager number and the salary of the lowest-paid employee for that manager. 
Exclude anyone whose manager is not known. Exclude any groups where the minimum salary is $6,000 or less. 
Sort the output in descending order of salary.*/
SELECT manager_id, MIN(salary)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;

/*Create a query to display the total number of employees and, of that total, the number of employees hired in 2005, 2006, 2007, and 2008.
 Create appropriate column headings*/
SELECT COUNT(*) total,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2005,1,0))"2005",
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2006,1,0))"2006",
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2007,1,0))"2007",
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2008,1,0))"2008"
FROM employees;