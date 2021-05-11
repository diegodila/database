SET SERVEROUT ON
DECLARE
    V_LAST_NAME VARCHAR (25);
    V_FIRST_NAME VARCHAR (20);
    v_tax number(2,1) := 1;
    v_comm v_tax%type;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Exemplo do %TYPE');
END;
/

DESCRIBE EMPLOYEES;

ALTER TABLE  EMPLOYEES
MODIFY LAST_NAME VARCHAR (30);
/*
 */

select LAST_NAME
from EMPLOYEES
where SALARY>=1000;

select LAST_NAME
from EMPLOYEES
where SALARY>=  20000;

select LAST_NAME
from EMPLOYEES
where SALARY >= :b1;

--lru lista de quais são mais utilizados
ACCEPT p_salary prompt 'Informe o salario do funcionario'
ACCEPT p_nome prompt 'info o nome do funcionarioioooo'
declare
    v_salary number(8) := &p_salary;
    v_nome varchar(50) := '%p_nome';
begin
    DBMS_OUTPUT.PUT_LINE(v_nome || chr(9)|| v_salary);
end;
/

set serverout on;

describe EMPLOYEES;
