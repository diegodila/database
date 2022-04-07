drop table tabela_d;
drop table tabela_e;
drop table tabela_f;

create table tabela_d
(elementos_d char(1));

create table tabela_e
(elementos_e char(1));

create table tabela_f
(elementos_f char(1));

insert into tabela_d values (1);
insert into tabela_d values (2);
insert into tabela_d values (3);
insert into tabela_d values (4);

insert into tabela_e values (1);
insert into tabela_e values (2);
insert into tabela_e values (3);
insert into tabela_e values (4);

insert into tabela_f values (5);
insert into tabela_f values (6);
insert into tabela_f values (7);
insert into tabela_f values (8);

commit;

SELECT elementos_d FROM tabela_d;
SELECT elementos_e FROM tabela_e;
SELECT elementos_f FROM tabela_f;

select elementos_d, elementos_e
from tabela_d join tabela_e
on elementos_d=elementos_e join tabela_f
on elementos_d=elementos_f;

select elementos_d, elementos_f
from tabela_d full outer join tabela_f
on elementos_d=elementos_f;