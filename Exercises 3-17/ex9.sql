/*Create a report that produces the following for each employee:
<employee last name> earns <salary> monthly but wants <3 times salary.>.
Label the column Dream Salaries.
*/
SELECT last_name || ' earns '
|| TO_CHAR(salary, 'fm$99,999.00')
|| ' monthly but wants '
|| TO_CHAR(salary * 3, 'fm$99,999.00')
|| '.' "Dream Salaries"
FROM employees;

/*Display each employee’s last name, hire date, and salary review date, which is the first Monday after six months of service. 
Label the column REVIEW. Format the dates to appear in a format that is similar to “Monday, the Thirty-First of July, 2000.”*/
SELECT last_name, hire_date,
TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'MONDAY'),
'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW
FROM employees;

/*Create a query that displays employees’ last names and commission amounts. 
If an employee does not earn commission, show “No Commission.” Label the column COMM
*/
SELECT last_name,
NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM employees;