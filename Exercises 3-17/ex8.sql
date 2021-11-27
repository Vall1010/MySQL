/*Write a query to display the system date. Label the column Date.*/
SELECT sysdate "Date"
FROM dual;

/*
The HR department needs a report to display the employee number, last name, salary, 
and salary increased by 15.5% (expressed as a whole number) for each employee.
*/
SELECT employee_id, last_name, salary,
ROUND(salary * 1.155, 0) "New Salary"
FROM employees;

/*Modify your previous query to add a column that subtracts the old salary from the new salary. Label the column Increase*/
SELECT employee_id, last_name, salary,
ROUND(salary * 1.155, 0) "New Salary",
ROUND(salary * 1.155, 0) - salary "Increase"
FROM employees;

/*The HR department wants to find the duration of employment for each employee. For each employee, 
display the last name and calculate the number of months between today and the date on which the employee was hired.
Label the column as MONTHS_WORKED. Order your results by the number of months employed. 
The number of months must be rounded to the closest whole number.*/
SELECT last_name, ROUND(MONTHS_BETWEEN(
SYSDATE, hire_date)) MONTHS_WORKED
FROM employees
ORDER BY months_worked;

/*Create a query to display the last name and the number of weeks employed for all employees in department 90. 
Label the number of weeks column as TENURE. Truncate the number of weeks value to 0 decimal places. 
Show the records in descending order of the employee’s tenure.
*/
SELECT last_name, trunc((SYSDATE-hire_date)/7) AS TENURE
FROM employees
WHERE department_id = 90
ORDER BY TENURE DESC;
