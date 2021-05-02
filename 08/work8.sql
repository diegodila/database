SELECT employee_id, last_name, salary
FROM employees
WHERE SALARY  > (SELECT AVG(SALARY)
				 FROM EMPLOYEES)
AND DEPARTMENT_ID  IN (SELECT DEPARTMENT_ID
						FROM EMPLOYEES
						WHERE LOWER(LAST_NAME) LIKE '%u%');


SELECT c.country_id, country_name
FROM COUNTRIES c
minus
SELECT c.country_id, country_name
FROM COUNTRIES c
JOIN LOCATIONS l
on(c.country_id=l.country_id)
JOIN DEPARTMENTS d
ON (l.location_id=d.location_id);

--4
SELECT COUNTRY_ID,COUNTRY_NAME
FROM COUNTRIES
MINUS
SELECT C.COUNTRY_ID,COUNTRY_NAME
FROM COUNTRIES C
JOIN LOCATIONS L
ON (C.COUNTRY_ID=L.COUNTRY_ID)
JOIN DEPARTMENTS D
ON (L.LOCATION_ID=D.LOCATION_ID);


select  EMPLOYEE_ID, JOB_ID
from EMPLOYEES
intersect
select j.employee_id,j.job_id
from job_history j;

select  EMPLOYEE_ID, JOB_ID
from EMPLOYEES
intersect
select employee_id,job_id
from job_history
where  EMPLOYEE_ID in (176,200);

select ELEMENTOS_A from TABELA_A
union all
select ELEMENTOS_B from TABELA_B;

select ELEMENTOS_A from TABELA_A
intersect
select ELEMENTOS_B from TABELA_B;

select ELEMENTOS_A from TABELA_A
minus
select ELEMENTOS_B from TABELA_B;

select ELEMENTOS_A from TABELA_A
union
select ELEMENTOS_B from TABELA_B;

select ELEMENTOS_A from TABELA_A
union
select ELEMENTOS_B from TABELA_B
union
select ELEMENTOS_C from TABELA_C;

select ELEMENTOS_A from TABELA_A
union all
select ELEMENTOS_B from TABELA_B
union all
select ELEMENTOS_C from TABELA_C
order by 1;

select ELEMENTOS_A from TABELA_A
intersect
select ELEMENTOS_B from TABELA_B
intersect
select ELEMENTOS_C from TABELA_C
order by 1;

select ELEMENTOS_A from TABELA_A
minus
select ELEMENTOS_B from TABELA_B
union
select ELEMENTOS_C from TABELA_C
order by 1;

(select ELEMENTOS_A from TABELA_A
minus
select ELEMENTOS_B from TABELA_B)
union all
select ELEMENTOS_C from TABELA_C
order by 1;

(select ELEMENTOS_A from TABELA_A
minus
select ELEMENTOS_B from TABELA_B)
intersect
select ELEMENTOS_C from TABELA_C
order by 1;


create view dept50
as
    select EMPLOYEE_ID,LAST_NAME,DEPARTMENT_ID
from EMPLOYEES
where DEPARTMENT_ID=50
with check option constraint dept50_co;

update  dept50
set DEPARTMENT_ID=10;

CREATE VIEW DEPT50
AS
SELECT EMPLOYEE_ID,LAST_NAME,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID=50
WITH CHECK OPTION CONSTRAINT DEPT50_CO;

UPDATE DEPT50
SET DEPARTMENT_ID=10;

DROP SEQUENCE DEPT_ID_SEQ;
CREATE SEQUENCE DEPT_ID_SEQ
START WITH 200
INCREMENT BY 10
MAXVALUE 1000;

DROP INDEX DEPT_DEPT_ID_IDX;
DROP TABLE DEPT;
CREATE TABLE DEPT (DEPT_ID,DEPT_NAME)
AS SELECT DEPARTMENT_ID,DEPARTMENT_NAME
FROM DEPARTMENTS;--CTAS


select elementos_a, elementos_b
from tabela_a, tabela_b;

select elementos_a
from tabela_a;

select elementos_a
from tabela_a
union all
select elementos_b
from tabela_b;

select elementos_a, elementos_b
from tabela_a full outer join tabela_b
on elementos_a=elementos_b;

select elementos_a, elementos_b
from tabela_a right outer join tabela_b
on elementos_a=elementos_b;

select elementos_b
from tabela_b
minus
select elementos_a
from tabela_a
intersect
select elementos_a
from tabela_a;