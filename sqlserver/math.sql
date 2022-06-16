-- SQL Math
use AdventureWorks

select  UnitPrice + LineTotal unitPrice_LineTotal_SUM
from Sales.SalesOrderDetail

select  UnitPrice - LineTotal unitPrice_LineTotal_MINUS
from Sales.SalesOrderDetail

select  UnitPrice - LineTotal unitPrice_LineTotal_MINUS
from Sales.SalesOrderDetail
where LineTotal = UnitPrice

select  UnitPrice * LineTotal unitPrice_LineTotal_V
from Sales.SalesOrderDetail

select  UnitPrice * LineTotal unitPrice_LineTotal_V
from Sales.SalesOrderDetail
where UnitPrice = LineTotal

select  UnitPrice / LineTotal unitPrice_LineTotal_DIV
from Sales.SalesOrderDetail


select max(LineTotal) LineTotal_MAX
from sales.SalesOrderDetail

select round(LineTotal,3) LineTotal_ROUND
from sales.SalesOrderDetail

select sqrt(LineTotal) as LineTotal_SQRT
from Sales.SalesOrderDetail