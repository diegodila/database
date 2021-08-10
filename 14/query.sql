SET SERVEROUT ON
DECLARE
    V_EMP_ID EMPLOYEES.EMPLOYEE_ID%type:=100;
    V_EMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%type;
    V_FIRST_NAME EMPLOYEES.FIRST_NAME%type;
    V_LAST_NAME EMPLOYEES.LAST_NAME%type;
    V_EMAIL EMPLOYEES.EMAIL%type;
    V_PHONE_NUMBER EMPLOYEES.PHONE_NUMBER%type;
    V_HIRE_DATE EMPLOYEES.HIRE_DATE%type;
    V_JOB_ID EMPLOYEES.JOB_ID%type;
    V_SALARY EMPLOYEES.SALARY%type;
    V_COMMISSION_PCT EMPLOYEES.COMMISSION_PCT%type;
    V_MANAGER_ID EMPLOYEES.MANAGER_ID%type;
    V_DEPARTMENT_ID EMPLOYEES.DEPARTMENT_ID%type;
BEGIN
    SELECT EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE_NUMBER,
    HIRE_DATE,
    JOB_ID,
    SALARY,
    COMMISSION_PCT,
    MANAGER_ID,
    DEPARTMENT_ID
    INTO V_EMPLOYEE_ID,
    V_FIRST_NAME,
    V_LAST_NAME,
    V_EMAIL,
    V_PHONE_NUMBER,
    V_HIRE_DATE,
    V_JOB_ID,
    V_SALARY,
    V_COMMISSION_PCT,
    V_MANAGER_ID,
    V_DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID=V_EMP_ID;

DBMS_OUTPUT.PUT_LINE (V_EMPLOYEE_ID || ' ' ||
V_FIRST_NAME || ' ' ||
V_LAST_NAME || ' ' ||
V_EMAIL || ' ' ||
V_PHONE_NUMBER || ' ' ||
V_HIRE_DATE || ' ' ||
V_JOB_ID || ' ' ||
V_SALARY || ' ' ||
V_COMMISSION_PCT || ' ' ||
V_MANAGER_ID || ' ' ||
V_DEPARTMENT_ID );
END;
/


