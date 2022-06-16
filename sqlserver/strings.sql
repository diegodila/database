--

Production.Product as product
use AdventureWorks
select concat(datepart(dd,OrderDate),'-',datepart(mm,OrderDate)) as DM
from Sales.SalesOrderHeader


select concat(FirstName,'-',LastName)
from Person.Person

-- lowercase
select lower(FirstName)
from Person.Person

-- lower with concat two columns
select lower(concat(FirstName,' *** ',LastName))
from Person.Person

-- upper
select upper(FirstName)
from Person.Person

-- upper with name count
select upper(FirstName), len(FirstName) count_name
from Person.Person

select substring(FirstName,1,4)
from Person.Person

select replace(ProductNumber,'-','#')
from Production.Product