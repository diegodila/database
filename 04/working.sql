SELECT employee_id, job_id
FROM   employees
UNION
SELECT employee_id, job_id
FROM   job_history;

SELECT a.employee_id, a.job_id, b.EMPLOYEE_ID, b.JOB_ID
FROM   employees a, job_history b;

select *
from JOB_HISTORY;

select *
from EMPLOYEES
where EMPLOYEE_ID=102;