/*
 1. como ver quais tabelas tem no banco do seu schema
 */

 /* **************RESPOSTA INITPLSQL.SQL
 1. escreva um hello world em plsql, imprimindo a variavel v_teste
 */

 select table_name from USER_TABLES;


DECLARE @TB TABLE (ID_EstoqueAtivoFixo INT, ID_AtivoFixo INT, i INT)