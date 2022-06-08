-- o having é basicamente muito usad em junção com o groupby para filtrar resultados de um agrupamento
-- de uma forma mais simples eu gosto de entender ele como basicamente um where para dados agrupados
-- a grande diferença entre having e where é que o group by é aplicado depois que os dados já foram agrupados
-- enquanto o where é aplicado antes dos dados serem agrupados

-- quais nome tem uma ocorrencia maior que 10 vezes

select * from Person.Person

select FirstName, count(FirstName) as "FirstName_count"
from Person.Person
group by FirstName
having count(FirstName) >= 10
order by FirstName_count

select FirstName, count(FirstName) as "FirstName_count"
from Person.Person
where FirstName in ('Greg', 'Jeff')
group by FirstName
having count(FirstName) >= 10
order by FirstName_count

-- quais produtos que no total de vendas estão entre 162k a 500k

select * from Sales.SalesOrderDetail

select ProductID, sum(LineTotal) as "LineTotal_SUM"
from Sales.SalesOrderDetail
group by ProductID
having sum(LineTotal) between '162000' and '500000'
order by LineTotal_SUM

-- quais nomes tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'

select FirstName, count(FirstName) as "FirstName_Count"
from Person.Person
where Title like '%Mr.'
group by FirstName
having count(FirstName) > 10

-- identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema, é preciso encontrar provincias
-- que estão registradas no banco de ados mais que 1000 vezes

select * from person.Address

select StateProvinceID, count(StateProvinceID) as "StateProvinceID_Count"
from person.Address
group by StateProvinceID
having count(StateProvinceID) > 1000

-- quais produtos(productId) não estão trazendo em média no mínimo 1 milhão em total de vendas (linetotal)
select * from sales.SalesOrderDetail

select ProductID, sum(LineTotal) as "LineTotal_Sum"
from Sales.SalesOrderDetail
group by ProductID
having sum(LineTotal) < 1000000