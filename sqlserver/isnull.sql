select isnull(null,'paçoca') énulo

select * from Person.Person
where Suffix is null

select isnull(Suffix,'cadhh') énulo,*
from Person.Person

select AddressLine1, isnull(AddressLine2,AddressLine1 ) from person.Address
