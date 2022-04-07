BEGIN
DBMS_OUTPUT.PUT_LINE('EXEMPLO 1');
END;
/
/*
plsql é tipo um linguagem de programação no sql
(tipos de laços plsql) (comandos condicionais dml - dtl)

ddl(não tem plsql) pressupoe que voce ja tenha as tabelas(create,drop,)

plsql permite que crie cursores, constantes, variaveis
cursores é onde armazenamos dados em memoria

quando retorna uma linha eu armazeno em variaveis
se as estruturas de seleção retornarem mais de uma linha armazenamos em cursores

o Plsql é um produto da oracle, que escreveu e tem direitos é a oracle
necessidade de programar no sql server são conceitos extremamentes diferentes, comandos diferentes, sintaxe diferentes. Microsoft escreve a linguaguem de acordo com os paradigmas dela

a estrutura do banco do banco de dados, arquitetura do banco de dados, essa estruturas são diferentes de cada fabricante, se precisar migrar do plsql para o transaction sql talvez voce precise reescrever tode o codigo. Não adianta fazer o depara

O melhor sgbd é o que resolve os problemas de negocio, ou da empresa

Um dos bancos de dados da ibm, Db2- quando migramos dados, pode ser feito de varias maneiras. A ibm resolveu fazer a compatibilização de 100 para atender o plsql. Porque migrar dados é facil, dificil é migrar codigo.

programar no back end ou bd. Atualmente temos do dois jeitos
sempre vamos encontrar alguma coisa do dois lados
vantagens é que podemos jogar o processamento para o sgbd
o ambiente plsql tem um problema (quando disparamos um bloco de prog, tem 12 engines que vão entrar na interpretação desse bloco e prog, tem bloco que process query language)

quando começamos o laço(10 interações, com instruções de insert) a engine que tem controle, é a engine de plsql, depois se temos um insert a engine troca de contexto, entrando a engine sql realizando o insert, depois quando o laço vai fazer o teste condicional de saída volta o contexto para o sql engine

troca de contexto (engine pl/sql) uma engine que processa prog e sql (troca de contexto)

bloco anonimo (declare, begin, exception, end). definimos se a estrutura sera um procedimento ou uma função
o bloco é formado por 3 div e só uma obrigatoria, a sessao Begin End
comando  declaração plsql entender como (laços e condicionais)
cursores são estruturas de memoria que armazenam comandos sql
dentro de cursores, similires a uma lista, array

podemos tratar exceptions, definida, não pré definida, e a que eu crio

tipos de blocos anonima, procedure, function
quando escrevemos um procedimento não retorna nada para o ambiente de chamada, ja uma função sim
o procedimento ele pode, não é obrigatorio

a diferença que bloco anonimo não tem nome, e procedimento tem
o declare da procedure é o IS
se precisamos sempre retornar um dado é tem a function o com return

os triggers é um obj de progra, quando invocamos, os gatilhos são programados quando algo acontecer
tipo de bloco triggers
quando acontecer o evento, gatilho(trigger)

outra estrutura pkgs(contem procedures ou functions) variaveis publicas e privadas

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

a varivel é atribuida com :=
podemos atribuir tambem com default
v_emp_id number(5) default 3;

%TYPE voce esta pedindo pra ele ir na tabela e pegar o tipo dele
%TYPE  ELE VAI NA TABLE E JA ATRIBUI A TYPE A
*/
SET SERVEROUT ON
BEGIN
DBMS_OUTPUT.PUT_LINE('EXEMPLO 2'|| ' ' ||'EXEMPLO3');
DBMS_OUTPUT.PUT_LINE('EXEMPLO 2'|| CHR(9) ||'EXEMPLO3');
DBMS_OUTPUT.PUT_LINE('EXEMPLO 2'|| CHR(10) ||'EXEMPLO3');
DBMS_OUTPUT.PUT_LINE('EXEMPLO 2'|| CHR(13) ||'EXEMPLO3');
END;
/

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
/

DECLARE
V_LAST_NAME VARCHAR(25):='Xiuderico';
V_FIRST_NAME EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
DBMS_OUTPUT.PUT_LINE(V_LAST_NAME);

END;
/