-- SubSelect monte um relatorio de produtos cadastrados que tem o preço de venda acima da média


select * from production.Product

select avg(ListPrice) avg from Production.Product

select * from Production.Product
where ListPrice > 438.66

select * from production.Product
where ListPrice > (select avg(ListPrice) from Production.Product)

-- nome dos funcionaris que tem o cargo de 'Design engineer'

select * from HumanResources.Employee
where JobTitle = 'Design Engineer'

-- subselect
select * from Person.Person
where BusinessEntityID in (select BusinessEntityID from HumanResources.Employee
where JobTitle = 'Design Engineer')

-- inner join
select * from person.Person
inner join HumanResources.Employee HE on HE.BusinessEntityID = Person.BusinessEntityID
where HE.JobTitle = 'Design Engineer'

select * from person.Person
inner join HumanResources.Employee HE on He.BusinessEntityID = Person.BusinessEntityID
and HE.JobTitle = 'Design Engineer'

-- todos os endereços que estão no estado de Alberta (Person.Address e Person.StateProvince)

select * from person.Address
select * from person.StateProvince
where Name = 'Alberta'

-- subselect
select * from Person.Address
where StateProvinceID in (select StateProvinceID
from person.StateProvince
where Name = 'ALberta')

-- inner join
select * from Person.Address
inner join Person.StateProvince SP on SP.StateProvinceID = Address.StateProvinceID
where sp.Name = 'Alberta'