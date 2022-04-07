select LAST_NAME
from EMPLOYEES
where SALARY > (select SALARY
                from EMPLOYEES
                where LAST_NAME='Abel');