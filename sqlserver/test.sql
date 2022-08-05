use AdventureWorks

select distinct
    case when person.FirstName = 'Syed' then 'diego' else LastName end die
from Person.Person as person


SELECT
   GETDATE()         as 'GETDATE()'
  ,CURRENT_TIMESTAMP as 'CURRENT_TIMESTAMP'
  ,SYSDATETIME()     as 'SYSDATETIME()';


use Diegosa
select *,
lag(value,1,null) over (partition by cidade order by value) #lag,
row_number() over (partition by cidade order by value) #row_number,
dense_rank()  over (partition by pais order by value) #dense_rank,
rank() over (partition by cidade order by value) #rank
from dbo.data
order by pais, cidade;


SELECT SUBSTRING('000003333', 4,5)