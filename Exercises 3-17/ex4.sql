--The HR department wants a query to display all unique job IDs from the EMPLOYEES table.
SELECT DISTINCT
    job_id
FROM
    employees;

/*The HR department has also requested a report of all employees and their job IDs. 
Display the last name concatenated with the job ID (separated by a comma and space) 
and name the column Employee and Title.*/

SELECT
    last_name
    || ' '
    || job_id AS "Employee and Title"
FROM
    employees;

/*Create a query to display all the data from that table. 
Separate each column output by a comma. Name the column THE_OUTPUT.
*/

SELECT
    employee_id|| ', ' ||
    first_name|| ', ' ||
    last_name|| ', ' ||
    email|| ', ' ||
    phone_number|| ', ' ||
    hire_date|| ', ' ||
    job_id|| ', ' ||
    salary|| ', ' ||
    commission_pct|| ', ' ||
    manager_id|| ', ' ||
    department_id as THE_OUTPUT
FROM
    employees;