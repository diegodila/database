-- DECLARE
-- EXCEPTION

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
V_EMP_ID NUMBER(5);
V_COMM_PCT NUMBER(2) := 1;
V_COUNT NUMBER(2) NOT NULL := 1;
V_DATE DATE := SYSDATE+1;
C_TAX CONSTANT NUMBER(5) := 23;
BEGIN
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


