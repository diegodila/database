-- buscar essas informações BusinessEntityID, Firstname, LastName,EmailAdress

select top 10 * from person.Person

select top 10 * from person.EmailAddress

select count(*) as diego
from Person.Person ED
inner join Person.EmailAddress EA on ED.BusinessEntityID = EA.BusinessEntityID



';