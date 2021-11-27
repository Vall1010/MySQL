/*
Write a query for the HR department to produce the addresses of all the departments. Use the LOCATIONS and COUNTRIES tables. 
Show the location ID, street address, city, state or province, and country in the output. 
Use a NATURAL JOIN to produce the results
*/
SELECT location_id, street_address, city, state_province,
country_name
FROM locations
NATURAL JOIN countries;

/*
The HR department needs a report of all employees with corresponding departments. 
Write a query to display the last name, department number, and department name for these employees
*/
SELECT last_name, department_id, department_name
FROM employees
JOIN departments
USING (department_id);

/*
The HR department needs a report of employees in Toronto. Display the last name, 
job, department number, and the department name for all employees who work in Toronto
*/
SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE LOWER(l.city) = 'toronto';

/*
Create a report to display employees’ last names and employee numbers along with their managers’ 
last names and manager numbers. Label the columns Employee, Emp#, Manager, and Mgr#, respectively
*/
SELECT w.last_name "Employee", w.employee_id "EMP#",
m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id);