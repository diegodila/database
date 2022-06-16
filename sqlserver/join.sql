-- left outer join
-- left join

-- descobrir quais pessoas tem um cartão de credito registrado

select *
from person.person
left join sales.PersonCreditCard on Person.BusinessEntityID = PersonCreditCard.BusinessEntityID
where PersonCreditCard.BusinessEntityID is null


select * from person.Person