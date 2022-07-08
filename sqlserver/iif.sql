-- SQL 2008 NAO TEM SUPORTE AO IIF
select iif(1=1,'é verdadeiro','é falso') IIF;

select case when 1=1 then 'é verdadeiro' else 'é falso' end IIF;