-- left outer join
-- left join

-- descobrir quais pessoas tem um cartão de credito registrado

select *
from person.person
left join sales.PersonCreditCard on Person.BusinessEntityID = PersonCreditCard.BusinessEntityID
where PersonCreditCard.BusinessEntityID is null


select * from person.Person


SELECT ProductID, Purchasing.Vendor.BusinessEntityID, Name
FROM Purchasing.ProductVendor INNER JOIN Purchasing.Vendor
    ON (Purchasing.ProductVendor.BusinessEntityID = Purchasing.Vendor.BusinessEntityID)
WHERE StandardPrice > $10
  AND Name LIKE N'F%';

use AdventureWorks
select * from p