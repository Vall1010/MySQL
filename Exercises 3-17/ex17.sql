/*Create the DEPT table based on the following table instance chart. Confirm that the table is created*/
CREATE TABLE dept
(id NUMBER(7)CONSTRAINT department_id_pk PRIMARY KEY,
name VARCHAR2(25));

/*Create the EMP table based on the following table instance chart
*/
CREATE TABLE emp
(id NUMBER(7),
last_name VARCHAR2(25),
first_name VARCHAR2(25),
dept_id NUMBER(7)
CONSTRAINT emp_dept_id_FK REFERENCES dept (id)
);
/*
Modify the EMP table. Add a COMMISSION column of the NUMBER data type, 
with precision 2 and scale 2. Confirm your modification
*/
ALTER TABLE emp
ADD commission NUMBER(2,2);

/*
Modify the EMP table to allow for longer employee last names
*/
ALTER TABLE emp
MODIFY (last_name VARCHAR2(50));

/*
Drop the FIRST_NAME column from the EMP table. Confirm your modification by checking the description of the table
*/
ALTER TABLE emp
DROP COLUMN first_name;

/*
In the EMP table, mark the DEPT_ID column as UNUSED. Confirm your modification by checking the description of the table.
*/
ALTER TABLE emp
SET UNUSED (dept_id);

/*
Drop all the UNUSED columns from the EMP table
*/
ALTER TABLE emp
DROP UNUSED COLUMNS;

/*
Create the EMPLOYEES2 table based on the structure of the EMPLOYEES table. 
Include only the EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, and DEPARTMENT_ID columns.
Name the columns in your new table ID, FIRST_NAME, LAST_NAME, SALARY, and DEPT_ID, respectively
*/
CREATE TABLE employees2 AS
SELECT employee_id id, first_name, last_name, salary,
department_id dept_id
FROM employees;

/*Alter the status of the EMPLOYEES2 table to read-only*/
ALTER TABLE employees2 READ ONLY;
/*Drop the EMP, DEPT, and EMPLOYEES2 table.*/
DROP TABLE emp;
DROP TABLE dept;
DROP TABLE employees2;