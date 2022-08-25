drop table tabela_d;
drop table tabela_e;
drop table tabela_f;

create table tabela_d
(elementos_d char(1), elementos_x char(1), data date);

ALTER TABLE tabela_d
ADD data date;
select * from tabela_d;

create table tabela_e
(elementos_e char(1));

create table tabela_f
(elementos_f char(1));


INSERT INTO tabela_d (elementos_d, elementos_x, data)
VALUES (1, 3, TO_DATE('19/12/2015', 'DD/MM/YYYY'));

delete
from tabela_d
where tabela_d.data <> (TO_DATE('18/12/2015', 'DD/MM/YYYY'))
and elementos_d  <> (3);

select * from tabela_d
where tabela_d.data not in (TO_DATE('18/12/2015', 'DD/MM/YYYY'))
and elementos_d  (3);

select * from tabela_d
where data <> (TO_DATE('18/12/2015', 'DD/MM/YYYY'))
or elementos_x <> 3;

select * from tabela_d;

delete

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

