--VIEWS

CREATE VIEW 	empvu80
 AS SELECT  employee_id, last_name, salary
    FROM    employees
    WHERE   department_id = 80;
	
DESCRIBE empvu80;
desc empvu80;

select  *
from empvu80;

update empvu80
set salary=15000; --sem where ele avisa

update empvu80
set salary=15000
where employee_id=145;

select *
from empvu80;

select salary
from EMPLOYEES
    where EMPLOYEE_ID=145;

delete from empvu80
where employee_id=145;

insert into empvu80
values (1000,'Zezao',5000);


CREATE VIEW 	salvu50
 AS SELECT  employee_id ID_NUMBER, last_name NAME,
            salary*12 ANN_SALARY
    FROM    employees
    WHERE   department_id = 50;


SELECT *
FROM   salvu50;

CREATE OR REPLACE VIEW empvu80
  (id_number, name, sal, department_id)
AS SELECT  employee_id, first_name || ' '
           || last_name, salary, department_id
   FROM    employees
   WHERE   department_id = 80;

CREATE VIEW	dept_sum_vu
  (name, minsal, maxsal, avgsal)
AS SELECT	 d.department_name, MIN(e.salary), 
             MAX(e.salary),AVG(e.salary)
   FROM      employees e, departments d
   WHERE     e.department_id = d.department_id 
   GROUP BY  d.department_name;

select * from dept_sum_vu;

CREATE OR REPLACE VIEW empvu20
AS SELECT	*
   FROM     employees
   WHERE    department_id = 20
   WITH CHECK OPTION CONSTRAINT empvu20_ck;


CREATE OR REPLACE VIEW empvu10
    (employee_number, employee_name, job_title)
AS SELECT	employee_id, last_name, job_id
   FROM     employees
   WHERE    department_id = 10
   WITH READ ONLY ;

CREATE OR REPLACE VIEW empvu20
AS SELECT	*
   FROM     employees
   WHERE    department_id = 20;

update empvu10
set empvu10.employee_name = 'Chicao';

select * from empvu20;
update empvu20
set DEPARTMENT_ID = 10
where EMPLOYEE_ID=201;

DROP VIEW empvu80;


CREATE OR REPLACE VIEW empvu20 AS
SELECT *
FROM   employees
WHERE  department_id = 20
WITH CHECK OPTION CONSTRAINT empvu20_ck;

SELECT employee_id, job_id, salary, department_id
FROM empvu20;
