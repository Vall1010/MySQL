/*
Create a report to display employees’ last names and employee numbers along with their managers’ 
last names and manager numbers.
Label the columns Employee, Emp#, Manager, and Mgr#, respectively. 
The result must include the employees who has no manager
*/

SELECT w.last_name "Employee", w.employee_id "EMP#",
m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w
LEFT OUTER JOIN employees m
ON (w.manager_id = m.employee_id)
ORDER BY 2;

/*
Create a report for the HR department that displays employee last names, department numbers, 
and all the employees who work in the same department as a given employee
*/
SELECT e.department_id department, e.last_name employee,
c.last_name colleague
FROM employees e JOIN employees c
ON (e.department_id = c.department_id)
WHERE e.employee_id <> c.employee_id
ORDER BY e.department_id, e.last_name, c.last_name;

/*
The HR department wants to determine the names of all employees who were hired after Davies. 
Create a query to display the name and hire date of any employee hired after employee Davies
*/
SELECT e.last_name, e.hire_date
FROM employees e JOIN employees davies
ON (davies.last_name = 'Davies')
WHERE davies.hire_date < e.hire_date;

/*
The HR department needs to find the names and 
hire dates of all employees who were hired before their managers, 
along with their managers’ names and hire dates
*/
SELECT w.last_name, w.hire_date, m.last_name, m.hire_date
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id)
WHERE w.hire_date < m.hire_date;