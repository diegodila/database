drop table A;
drop table B;
drop table C;

create table A
(ID char(1), numeros char(5), data date);

create table B
(ID char(1), numeros char(5), data date);

create table C
(ID char(1), numeros char(5), data date);


INSERT ALL
   INTO A (id, numeros, data) VALUES (1, 101, TO_DATE('20/07/2022', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (2, 102, TO_DATE('11/11/2132', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (3, 103, TO_DATE('23/10/2023', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (3, 103, TO_DATE('21/10/2023', 'DD/MM/YYYY'))
   INTO A (id, numeros, data) VALUES (9, 103, TO_DATE('21/10/2023', 'DD/MM/YYYY'))
SELECT 1 FROM DUAL;

INSERT ALL
   INTO B (id, numeros, data) VALUES (1, 201, TO_DATE('20/01/2022', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (2, 202, TO_DATE('22/10/2032', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (3, 203, TO_DATE('21/10/2023', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (4, 203, TO_DATE('21/12/2011', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (4, 203, TO_DATE('23/11/2011', 'DD/MM/YYYY'))
   INTO B (id, numeros, data) VALUES (5, 203, TO_DATE('23/03/2023', 'DD/MM/YYYY'))
SELECT 1 FROM DUAL;

select * from A;
select * from B;

select * from B inner join A on B.id = A.ID and A.data = B.data;

