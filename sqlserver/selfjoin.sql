-- sintaxe self join
-- select nome_coluna
-- from table a, table b
-- where condicao

select distinct ppa.firstname, ppa.MiddleName, ppb.MiddleName from person.person ppa, person.Person ppb
where  ppa.MiddleName = ppb.MiddleName

-- encontrar (nome e data de contratação) de todos os funcionários contratados no mesmo ano