/*Using the DECODE function, write a query that displays 
the grade of all employees based on the value of the JOB_ID column, using the following data*/
SELECT job_id, decode (job_id,
'ST_CLERK', 'E',
'SA_REP', 'D',
'IT_PROG', 'C',
'ST_MAN', 'B',
'AD_PRES', 'A',
'0')GRADE
FROM employees;

/*Rewrite the statement in the preceding exercise by using the CASE syntax*/
SELECT job_id, CASE job_id
WHEN 'ST_CLERK' THEN 'E'
WHEN 'SA_REP' THEN 'D'
WHEN 'IT_PROG' THEN 'C'
WHEN 'ST_MAN' THEN 'B'
WHEN 'AD_PRES' THEN 'A'
ELSE '0' END GRADE
FROM employees;