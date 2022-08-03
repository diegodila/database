select isnull(null,'paçoca') énulo;
--1
select * from Person.Person
where Suffix is null;
--2
select isnull(Suffix,'cadhh') énulo,*
from Person.Person;
--3
select AddressLine1, AddressLine2, isnull(AddressLine2,AddressLine1) from person.Address;