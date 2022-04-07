SELECT employee_id, job_id
FROM   employees
UNION
SELECT employee_id, job_id
FROM   job_history;

SELECT employee_id, job_id, department_id
FROM   employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM   job_history
ORDER BY  employee_id;

SELECT employee_id, job_id
FROM   employees
INTERSECT
SELECT employee_id, job_id
FROM   job_history;

SELECT employee_id, job_id
FROM   employees;

SELECT a.employee_id, a.job_id, b.EMPLOYEE_ID, b.JOB_ID
FROM   employees a, job_history b;

select *
from JOB_HISTORY;

select *
from EMPLOYEES
where EMPLOYEE_ID=102;