use AdventureWorks

select distinct
    case when person.FirstName = 'Syed' then 'diego' else LastName end die
from Person.Person as person