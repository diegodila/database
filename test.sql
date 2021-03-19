select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E full join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = null
or e.last_name = 'Grant'
or d.department_name = 'NOC';

select E.last_name, D.department_name,
    D.DEPARTMENT_ID PK,
    E.DEPARTMENT_ID FK
from employees E full join departments D
on (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = 'Executive'
or e.last_name = 'Grant'
or d.department_name = 'NOC';
