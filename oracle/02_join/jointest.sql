drop table tabela_a;
drop table tabela_b;
drop table tabela_c;

create table dso
(nome varchar(10), disciplina varchar(10), nota number(3));

select * from dso;
insert into dso (nome, disciplina, nota) values ('BARBARA','ASSEMBLER',10);
insert into professor values ('b');
insert into professor values ('c');
insert into professor values ('d');
insert into professor values ('f');
insert into professor values ('g');

create table tabela_a
(elementos_a char(1));

create table tabela_c
(elementos_c char(1));

insert into tabela_a values ('a');
insert into tabela_a values ('b');
insert into tabela_a values ('c');
insert into tabela_a values ('d');
insert into tabela_a values ('f');
insert into tabela_a values ('g');

insert into tabela_b values ('a');
insert into tabela_b values ('a');
insert into tabela_b values ('a');
insert into tabela_b values ('b');

insert into tabela_c values ('c');
insert into tabela_c values ('b');
insert into tabela_c values ('g');



commit;

SELECT elementos_A FROM TABELA_A;
SELECT elementos_B FROM TABELA_B;
SELECT elementos_C FROM TABELA_C;

SELECT * FROM TABELA_A A
left JOIN tabela_c C on A.ELEMENTOS_A = C.ELEMENTOS_C;

select * from tabela_b
left join TABELA_C TB on tabela_b.elementos_b = TB.ELEMENTOS_C