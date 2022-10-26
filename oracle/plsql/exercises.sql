/* *************
 1. como ver quais tabelas tem no banco do seu schema
 2. selecione a tabela dept e emp
 3.
 */
select table_name from USER_TABLES;

SELECT * FROM tab;
SELECT * FROM dept;
select * from emp;
 /* **********
 1. escreva um hello world em plsql, imprimindo a variavel v_teste
 */

DECLARE
    v_teste VARCHAR2(30):='Hello, World';
BEGIN     DBMS_OUTPUT.PUT_LINE(v_teste);
END;       /
