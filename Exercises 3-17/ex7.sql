/*
Write a query that displays the last name (with the first letter in uppercase and all the other letters in lowercase) 
and the length of the last name for all employees whose name starts with the letters “J,” “A,” or “M.” 
Give each column an appropriate label. Sort the results by the employees’ last names.
*/
SELECT INITCAP(last_name) "Name",
LENGTH(last_name) "Length"
FROM employees
WHERE last_name LIKE 'J%'
OR last_name LIKE 'M%'
OR last_name LIKE 'A%'
ORDER BY last_name;

/*
Create a query to display the last name and salary for all employees. 
Format the salary to be 15 characters long, left-padded with the $ symbol. Label the column SALARY.
*/
SELECT last_name,
LPAD(salary, 15, '$') SALARY
FROM employees;

/*
Create a query that displays the first eight characters of the employees’ last names, and indicates the amounts of their salaries with asterisks. 
Each asterisk signifies a thousand dollars. Sort the data in descending order of salary. 
Label the column EMPLOYEES_AND_THEIR_SALARIES
*/

SELECT rpad(last_name, 8)||' '||
rpad(' ', salary/1000+1, '*') EMPLOYEES_AND_THEIR_SALARIES
FROM employees
ORDER BY salary DESC;
