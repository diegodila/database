drop table tabela_a;
drop table tabela_b;
drop table tabela_c;

create table tabela_b
(elementos_b char(1));

create table tabela_a
(elementos_a char(1));

create table tabela_c
(elementos_c char(1));

insert into tabela_a values ('a');
insert into tabela_a values ('b');
insert into tabela_a values ('c');
insert into tabela_a values ('d');
insert into tabela_a values ('d');
insert into tabela_a values ('z');

insert into tabela_b values ('d');
insert into tabela_b values ('e');
insert into tabela_b values ('f');
insert into tabela_b values ('g');

insert into tabela_c values ('c');
insert into tabela_c values ('d');
insert into tabela_c values ('b');
insert into tabela_c values ('a');
insert into tabela_c values ('x');

commit;

SELECT elementos_A FROM TABELA_A;
SELECT elementos_B FROM TABELA_B;
SELECT elementos_C FROM TABELA_C;

SELECT A.elementos_a, C.ELEMENTOS_C FROM TABELA_A A
FULL JOIN tabela_c C on A.ELEMENTOS_A = C.ELEMENTOS_C;
