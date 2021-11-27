CREATE TABLE	My_employee
(id NUMBER(3), First_name VARCHAR2(14), last_name	VARCHAR2(14), user_id VARCHAR2(16), salary NUMBER(10));

/*
Populate the My_Employee table with the information contained on the 2 first rows of the following table
*/
INSERT INTO my_employee
VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);

INSERT INTO my_employee (id, last_name, first_name,
user_id, salary)
VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);

/*
Write an INSERT statement using substitution variables. The script should prompt for all the columns 
(ID, LAST_NAME, FIRST_NAME, USERID, and SALARY). Test it with the remaining rows from the table
*/

INSERT INTO my_employee
VALUES (&p_id, '&p_last_name', '&p_first_name','&p_userid', &p_salary);

/*Make the data additions permanent*/

commit;

/*Change the last name of employee 3 to Drexler*/
UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;

/*
Change the salary to $1,000 for all employees with a salary less than $900
*/
UPDATE my_employee
SET salary = 1000
WHERE salary < 900;

/*
Delete Betty Dancs from the MY_EMPLOYEE table
*/
DELETE
FROM my_employee
WHERE last_name = 'Dancs';

/*
Commit all pending changes.
*/
commit;

/*Mark an intermediate point in the processing of the transaction*/
SAVEPOINT step_9;

/*
Delete all the rows from the MY_EMPLOYEE table
*/
DELETE
FROM my_employee;

/*
Discard the most recent DELETE operation without discarding the earlier INSERT operation
*/
rollback to step_9;


