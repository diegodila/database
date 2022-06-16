-- estrutura do union
-- temos que ter a mesma quantidade de colunas e o mesmo tipo de dados
-- union remove as duplicatas a não ser que use um union all
use AdventureWorks

select coluna1, coluna2
from tabela1
union
select coluna1, coluna2
from tabela2

select ProductID, Name, ProductNumber from
                                          Production.Product where name like '%Chain%'
union
select ProductID, Name, ProductNumber from
                                          Production.Product where Name like  '%Decal%'
order by Name

-- union all
select FirstName, Title, MiddleName
from Person.Person
where title = 'Mr.'
union
select FirstName,Title, MiddleName
from Person.Person
where MiddleName = 'A'