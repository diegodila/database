use AdventureWorks

select SalesOrderID, datepart(yyyy, OrderDate)
from Sales.SalesOrderHeader

DECLARE @d DATETIME = '2019-01-01 14:30:14'
SELECT
   DATEPART(year, @d) year,
   DATEPART(quarter, @d) quarter,
   DATEPART(month, @d) month,
   DATEPART(day, @d) day,
   DATEPART(hour, @d) hour,
   DATEPART(minute, @d) minute,
   DATEPART(second, @d) second;

select SalesOrderID, datepart(mm, OrderDate) as date
from Sales.SalesOrderHeader

-- pegar a media do totaldue por mes na tabela sales.salesOrderHeader

select avg(TotalDue) totalDue_avg, datepart(mm,OrderDate) as month
from sales.SalesOrderHeader
group by datepart(mm,OrderDate) order by month