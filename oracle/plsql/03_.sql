 /*
 4 blocos logicos

 DECLARE (opcional)
-- Aqui definimos as variáveis e outras estruturas que veremos mais a frente
BEGIN (obrigatório)
-- Aqui usamos instruções SQL e PL/SQL
EXCEPTION (opcional)
-- Aqui definimos as ações que serão tomadas quando ocorrer alguma exceção entro do programa
END; (obrigatório)


 declarar variaveis:

 identificador [CONSTANT] tipo de dados [NOT NULL]
[:= valor para inicialização | expr default]

 */


--1
DECLARE
    v_teste VARCHAR2(30):='Hello, World';
BEGIN
    DBMS_OUTPUT.PUT_LINE(v_teste);
END;


/*
 1. escreva um hello world em plsql, imprimindo a variavel v_teste
 */