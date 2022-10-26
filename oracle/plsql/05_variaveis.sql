declare
v_nascimento DATE;
v_data DATE := SYSDATE + 7; 
v_codigo NUMBER(2) NOT NULL := 10; 
v_UF VARCHAR2(2) := 'SP';
v_loc VARCHAR2(2) DEFAULT 'RJ';
v_teste_logico BOOLEAN := (1 < 3);
begin
    DBMS_OUTPUT.PUT_LINE(v_data);
end;


