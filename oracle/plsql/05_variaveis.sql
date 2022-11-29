declare
v_nascimento DATE;
v_data DATE := SYSDATE + 7; 
v_codigo NUMBER(2) NOT NULL := 10; 
v_UF VARCHAR2(2) := 'SP';
v_loc VARCHAR2(2) DEFAULT 'RJ';
v_teste_logico BOOLEAN := (1 < 3);
begin
    DBMS_OUTPUT.PUT_LINE(v_nascimento);
end;


declare
v_vendido := v_venda – SYSDATE;
v_data DATE := SYSDATE + 7;
v_codigo NUMBER(2) NOT NULL := 10;
v_UF VARCHAR2(2) := 'SP';
v_loc VARCHAR2(2) DEFAULT 'RJ';
v_teste_logico BOOLEAN := (1 < 3);
begin
    DBMS_OUTPUT.PUT_LINE(v_data);
end;

I.
II. v_vendido := USER || ‘: ‘ || TO_CHAR(v_codigo);
III. v_num := $100,00 > $250,00;
IV. v_n7 := TRUE;
V. v_n8 := v_n3 > (2 * v_n4);



DECLARE
-- Variáveis Globais
numero NUMBER := 1264;
BEGIN
DECLARE
-- Variáveis Locais
numero number := 1106;
BEGIN
DBMS_OUTPUT.PUT_LINE('Número: ' || numero);
END;
DBMS_OUTPUT.PUT_LINE('Número: ' || numero);
END;

DECLARE
CREATE OR REPLACE PROCEDURE INSERE_PROFESSOR
(V_COD_PROF in NUMBER,
V_DISCIPLINA in VARCHAR2 DEFAULT 'JAVA',
V_NOME in VARCHAR2)
IS
BEGIN
INSERT INTO TEAM (cod_prof, disciplina, nome)
VALUES (v_cod_prof, v_disciplina, v_nome);
COMMIT;
END;


DECLARE
retorno NUMBER(3);
BEGIN
    SELECT 100
    INTO retorno
    FROM dual;

DBMS_OUTPUT.PUT_LINE(retorno);
END;
/
select * from DSO

insert into dso (nome, disciplina, nota) values ('BARBARA','ASSEMBLER',10);



DECLARE

   v_nome aluno.NOME_V%TYPE;

   v_sobrenome aluno.NOME_V%TYPE;

BEGIN

    SELECT NOME_V, NOME_C

      INTO v_nome, v_sobrenome

      FROM aluno

     WHERE NOME_V = 'POYATOS';



WHEN NO_DATA_FOUND THEN

     DBMS_OUTPUT.PUT_LINE ('Estudante não cadastrado');

END;


BEGIN
DECLARE
   v_bandeira_atual VARCHAR2(30) := 'VERDE';
   v_bandeira_nova VARCHAR2(30) := 'AMARELA';
   v_atual   NUMBER := 1;
 BEGIN
 UPDATE    PROFESSOR
 SET     NOME   = v_bandeira_nova
WHERE     NOME = v_bandeira_atual;
 v_atual := 2;
END;
DBMS_OUTPUT.PUT_LINE(TO_CHAR(v_bandeira));
END;

declare
    v_qtd_pedida, v_qtd_enviada NUMBER(9);
begin
    DBMS_OUTPUT.PUT_LINE(v_qtd_pedida);
end;