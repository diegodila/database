SELECT last_name
FROM   employees
WHERE  salary >
               (SELECT salary
                FROM   employees
                WHERE  last_name = 'Abel');

-------------------------------------------------
SELECT last_name, job_id, salary
FROM   employees
WHERE  job_id =  
                (SELECT job_id
                 FROM   employees
                 WHERE  employee_id = 141)
AND    salary >
                (SELECT salary
                 FROM   employees
                 WHERE  employee_id = 143);

-------------------------------------------------
SELECT last_name, job_id, salary
FROM   employees
WHERE  salary = 
                (SELECT MIN(salary)
                 FROM   employees);
-- a função MIN() ou MAX() retorna apenas um resultado, onde o operador = aceita apenas um retorno
-------------------------------------------------
SELECT   department_id, MIN(salary)
FROM     employees
GROUP BY department_id
HAVING   MIN(salary) >
                       (SELECT MIN(salary)
                        FROM   employees
                        WHERE  department_id = 50);
--Where é para coluna, HAVING é para função de grupo
-------------------------------------------------
SELECT   department_id, MIN(salary)
FROM     employees
GROUP BY department_id
HAVING   MIN(salary) >
                       (SELECT MIN(salary)
                        FROM   employees
                        WHERE  department_id = 70);
-------------------------------------------------
SELECT employee_id, last_name
FROM   employees
WHERE  salary =
                (SELECT   MIN(salary)
                 FROM     employees
                 GROUP BY department_id);

--operador usado aceita um numero só. como a subquery retorna uma lista, devemos usar o operador in
-------------------------------------------------
SELECT employee_id, last_name
FROM   employees
WHERE  salary in
                (SELECT   MIN(salary)
                 FROM     employees
                 GROUP BY department_id);

--operador usado aceita um numero só. como a subquery retorna uma lista, devemos usar o operador in
-------------------------------------------------
SELECT last_name, job_id
FROM   employees
WHERE  job_id =
                (SELECT job_id
                 FROM   employees
                 WHERE  last_name = 'Haas');

-------------------------------------------------
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary < ANY
                    (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';

-------------------------------------------------
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary  IN
                    (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';

-------------------------------------------------
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary < all
                    (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';

-------------------------------------------------
SELECT emp.last_name
FROM   employees emp
WHERE  emp.employee_id NOT IN
                           (SELECT mgr.manager_id
                            FROM   employees mgr);
-------------------------------------------------
select last_name
from employees
where department_id=?;