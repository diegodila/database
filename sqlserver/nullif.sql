select nullif('1234','12344')

select FirstName,LastName, nullif(FirstName,'Aaron')
from person.Person
order by FirstName