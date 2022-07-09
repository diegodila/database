-- Syntax for SQL Server, Azure SQL Database, and Azure Synapse Analytics

OVER (
       [ <PARTITION BY clause> ]
       [ <ORDER BY clause> ]
       [ <ROW or RANGE clause> ]
      )

<PARTITION BY clause> ::=
PARTITION BY value_expression , ... [ n ]

<ORDER BY clause> ::=
ORDER BY order_by_expression
    [ COLLATE collation_name ]
    [ ASC | DESC ]
    [ ,...n ]

<ROW or RANGE clause> ::=
{ ROWS | RANGE } <window frame extent>

<window frame extent> ::=
{   <window frame preceding>
  | <window frame between>
}
<window frame between> ::=
  BETWEEN <window frame bound> AND <window frame bound>

<window frame bound> ::=
{   <window frame preceding>
  | <window frame following>
}

<window frame preceding> ::=
{
    UNBOUNDED PRECEDING
  | <unsigned_value_specification> PRECEDING
  | CURRENT ROW
}

<window frame following> ::=
{
    UNBOUNDED FOLLOWING
  | <unsigned_value_specification> FOLLOWING
  | CURRENT ROW
}

<unsigned value specification> ::=
{  <unsigned integer literal> }

-----------------------------------------------------------------------------

select
	  object_id
	, [min]	= min(object_id) over()
	, [max]	= max(object_id) over()
from sys.objects

select
	  object_id, type
	, [min]	= min(object_id) over(partition by type)
	, [max]	= max(object_id) over(partition by type)
from sys.objects

select
	  object_id, type
	, [min]	= min(object_id) over(partition by type order by object_id)
	, [max]	= max(object_id) over(partition by type order by object_id)
from sys.objects

select lag() over ()

select count(ModifiedDate),SalesOrderID from Sales.SalesOrderDetail
group by SalesOrderID
order by SalesOrderID

select ModifiedDate, SalesOrderID,ProductID,
       lag(ModifiedDate,1,ModifiedDate) over (partition by SalesOrderID order by SalesOrderID) window,
       datediff(day, lag(ModifiedDate,1,ModifiedDate) over (partition by SalesOrderID order by SalesOrderID), ModifiedDate) as diff
from Sales.SalesOrderDetail c
order by SalesOrderID asc

with cte as (
    select ModifiedDate, SalesOrderID,ProductID,
       lag(ModifiedDate,1,ModifiedDate) over (partition by SalesOrderID order by SalesOrderID) window,
       datediff(day, lag(ModifiedDate,1,ModifiedDate) over (partition by SalesOrderID order by SalesOrderID), ModifiedDate) as diff
from Sales.SalesOrderDetail
)
SELECT * FROM cte
WHERE diff <> 0