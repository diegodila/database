-- buscar essas informações BusinessEntityID, Firstname, LastName,EmailAdress

select top 10 * from person.Person

select top 10 * from person.EmailAddress

select count(*) as diego
from Person.Person ED
inner join Person.EmailAddress EA on ED.BusinessEntityID = EA.BusinessEntityID;

-- nomes dos produtos e as informações de suas subcategorias

select * from Production.ProductSubcategory

select * from Production.Product

select pd.name,PD.ProductID,PD.ListPrice, PD.ProductSubcategoryID as "PDCI", PDS.ProductSubcategoryID as "PDSCI", PDS.ProductCategoryID, PDS.Name
from Production.Product PD
inner join Production.ProductSubcategory PDS
on PD.ProductSubcategoryID = PDS.ProductSubcategoryID


-- addressID, City, StateProvinceID, nameState

select * from person.StateProvince
select * from person.Address

select S.StateProvinceID, S.Name Province, A.StateProvinceID, A.City
from Person.StateProvince S
inner join Person.Address A on S.StateProvinceID = A.StateProvinceID
where Name = 'Ontario'
