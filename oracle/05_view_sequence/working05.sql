select last_name, department_name
from employees E join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID);

select *
from EMPLOYEES;

select *
from DEPARTMENTS;

--criando uma visao de um table que não existe
CREATE FORCE VIEW emp_dept
AS SELECT * FROM emps;

DROP VIEW EMP_DEPT;

select * from emps;


CREATE OR REPLACE VIEW emp_jobs AS
    SELECT employee_id,last_name,department_id,salary,job_title
    FROM employees e JOIN jobs j
    ON ( e.job_id = j.job_id )
    WHERE department_id = 80
    OR salary BETWEEN 6000 AND 12000
WITH CHECK OPTION CONSTRAINT emp_jobs_co;

SELECT *
FROM   emp_jobs
WHERE  job_title='Sales Representative'
AND    salary >=10000;

select *
from emp_jobs;

update emp_jobs
set department_id=10, salary=5000
where employee_id=150;

update emp_jobs
set department_id=10
where salary between 8000 and 11000;

update emp_jobs
set salary=8000
where employee_id=150;

update emp_jobs
set department_id=10
where employee_id=150;

update emp_jobs
set salary=5000
where employee_id=150;

select  * from emp_jobs
where  department_id=10;