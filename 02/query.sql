select last_name, department_name
from employees E join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID);

select E.last_name, D.department_name
from employees E INNER join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID);

select E.last_name, D.department_name, E.department_id, D.department_id
from employees E LEFT OUTER join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID);

select E.last_name, D.department_name, E.department_id, D.department_id
from employees E full OUTER join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID);

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E INNER join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = 'Executive'
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E LEFT OUTER join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = 'Executive'
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E RIGHT join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = 'Executive'
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E LEFT join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = null
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E full join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = "Executive"
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E full join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = null
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select *
from employees;

select last_name, EMPLOYEE_ID, MANAGER_ID ID_manager
from employees;
-------------------------------------------------------------------
select a.last_name, b.MANAGER_ID, b.EMPLOYEE_ID, b.LAST_NAME CHEF
from EMPLOYEES a join EMPLOYEES b
on (a.EMPLOYEE_ID=b.MANAGER_ID);
-------------------------------------------------------------------
select a.last_name, a.manager_id, b.employee_id, b.last_name CHEF
FROM EMPLOYEES A join  EMPLOYEES B
on (A.MANAGER_ID=b.EMPLOYEE_ID);
-------------------------------------------------------------------
select a.EMPLOYEE_ID, a.LAST_NAME, b.MANAGER_ID, b.EMPLOYEE_ID, b.LAST_NAME
FROM EMPLOYEES A join  EMPLOYEES B
on (A.EMPLOYEE_ID=b.MANAGER_ID);
-------------------------------------------------------------------
select a.EMPLOYEE_ID,b.MANAGER_ID, a.last_name manager, b.last_name worker, a.MANAGER_ID manager, b.MANAGER_ID worker
from EMPLOYEES a join EMPLOYEES b
on (b.MANAGER_ID=a.EMPLOYEE_ID);