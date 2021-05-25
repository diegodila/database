-- DECLARE
-- EXCEPTION
CLEAR SCREEN
CLEAR SCREEN

DECLARE
  hire_date      employees.hire_date%TYPE;
  sysdate        hire_date%TYPE;
  employee_id    employees.employee_id%TYPE := 176;       
BEGIN
  SELECT   hire_date, sysdate
  INTO     hire_date, sysdate
  FROM     employees
  WHERE    employee_id = employee_id;
  
  DBMS_OUTPUT.PUT_LINE(hire_date,sysdate);

END;
/



DECLARE
  hire_date      employees.hire_date%TYPE;
  sysdate        hire_date%TYPE;
  employee_id    employees.employee_id%TYPE := 176;       
BEGIN
   DBMS_OUTPUT.PUT_LINE(employee_id);
END;
/

BEGIN
  INSERT INTO employees
  (employee_id, first_name, last_name, email,PHONE_NUMBER, hire_date, job_id, salary,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)
 VALUES(employees_seq.NEXTVAL,'Ruth','Cores','11','RCORES',sysdate,'AD_ASST',4000,5,3,5);
        COMMIT;
END;
/

desc employees


SET SERVEROUTPUT ON
DECLARE
   V_LAST_NAME EMPLOYEES.LAST_NAME%TYPE;
   V_SALARY    EMPLOYEES.SALARY%TYPE;
BEGIN
   SELECT LAST_NAME,SALARY
   FROM   EMPLOYEES
   WHERE  EMPLOYEE_ID=100;

   DBMS_OUTPUT.PUT_LINE('Sobrenome: '||V_LAST_NAME||' Salário: '||V_SALARY);

END;

/

VARIABLE b_bind NUMBER(5);
BEGIN
b_bind
END;


SET SERVEROUTPUT ON
CLEAR SCREEN

BEGIN
    DBMS_OUTPUT.PUT_LINE('EXEMPLO_1');
END;
/

SET SERVEROUTPUT ON
CLEAR SCREEN

BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD'||' '||'hshahhs');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD'||CHR(9)||'hshahhs');
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD'||CHR(10)||'hshahhs');
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD'||CHR(13)||'hshahhs');
END;
/

SELECT SYSDATE FROM DUAL;

DECLARE
v_flag NUMBER DEFAULT 1;
printer_name constant VARCHAR(10):='PRINT';
by_when DATE:=SYSDATE+1;
V_EMP_ID NUMBER(5);
V_COMM_PCT NUMBER(2) := 1;
V_COUNT NUMBER(2) NOT NULL := 1;
V_DATE DATE := SYSDATE+1;
C_TAX CONSTANT NUMBER(5) := 23;
BEGIN
DBMS_OUTPUT.PUT_LINE('v_flag: '||v_flag);
DBMS_OUTPUT.PUT_LINE('printer_name: '||printer_name);
DBMS_OUTPUT.PUT_LINE('bywhen: '||by_when);
DBMS_OUTPUT.PUT_LINE('Employee ID: '||V_EMP_ID);
DBMS_OUTPUT.PUT_LINE('Comissão: '||V_COMM_PCT);
V_COUNT := V_COUNT + 1;
DBMS_OUTPUT.PUT_LINE('Count: '|| V_COUNT );
V_COUNT := 30;
DBMS_OUTPUT.PUT_LINE('DATE: '||TO_CHAR(V_DATE,'DD/MM/RRRR HH24:MI:SS'));
END;







/*
/ A BARRA É UM EXEC IMEDIATO
-- comentario de linha
O PACOTE QUE O PUT_LINE ESTÁ DENTRO CHAMA SE DBMS_OUTPUT
PACOTE.PROCEDURE
o put_line tem que ser ligado, habilitando a saida

comando de ambiente não podemos colocar dentro do bloco

O PIPE É USADO PARA JUNTAR PARA CONCATENAR

CHR(10) É USADO PARA QUEBRAR LINHA  OU CHR(13)

utilização de variáveis podem ser usadas para:

identificadores como declararar variveis  
é importante padronizar v_ c_ reg_
padronização de nomeclatura
evitando retrabalho 

*/


