SELECT * 
FROM employees;
use employees;


SELECT GENDER, AVG(EMP_NO),MAX(EMP_NO),MIN(EMP_NO),COUNT(EMP_NO)
FROM employees
GROUP BY GENDER;

-- ORDER BY
SELECT *
FROM employees
ORDER BY GENDER,HIRE_DATE DESC
;
select*
FROM EMPLOYEES
ORDER BY 5,6;

-- HAVING VS WHERE
SELECT GENDER, AVG(EMP_NO)
FROM EMPLOYEES
GROUP BY GENDER
HAVING AVG(EMP_NO) > 100000;

-- LIMIT & ALIASING

SELECT *
FROM EMPLOYEES
LIMIT 3
;
 SELECT *
 FROM employees
 ORDER BY FIRST_NAME DESC
 LIMIT 3, 1
 ;
 -- ALIASING
 
 SELECT GENDER,AVG(EMP_NO) AS AVG_EMP_NO
 FROM EMPLOYEES
 GROUP BY GENDER 
 HAVING AVG(EMP_NO) > 100000;
 
 
 -- JOINS
 
 SELECT *
 FROM employees;

SELECT *
FROM SALARIES;

SELECT *
 FROM employees
INNER JOIN SALARIES
  ON employees.EMP_NO = SALARIES.EMP_NO
;

-- OUTER JOINS

SELECT *
 FROM employees
RIGHT JOIN SALARIES
  ON employees.EMP_NO = SALARIES.EMP_NO
;

-- SELF JOIN

select *
from salaries emp1
join salaries emp2
on emp1.emp_no + 1= emp2.emp_no;

use employees;

select e.gender,avg(salary)
from employees e
join salaries s
on e.emp_no = s.emp_no
where salary > '60000'
group by e.gender;

