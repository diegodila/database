/*
 -- Syntax for SQL Server and Azure SQL Database
-- ISO-Compliant Syntax

GROUP BY {
      column-expression
    | ROLLUP ( <group_by_expression> [ ,...n ] )
    | CUBE ( <group_by_expression> [ ,...n ] )
    | GROUPING SETS ( <grouping_set> [ ,...n ]  )
    | () --calculates the grand total
} [ ,...n ]

<group_by_expression> ::=
      column-expression
    | ( column-expression [ ,...n ] )

<grouping_set> ::=
      () --calculates the grand total
    | <grouping_set_item>
    | ( <grouping_set_item> [ ,...n ] )

<grouping_set_item> ::=
      <group_by_expression>
    | ROLLUP ( <group_by_expression> [ ,...n ] )
    | CUBE ( <group_by_expression> [ ,...n ] )


-- For backward compatibility only.
-- Non-ISO-Compliant Syntax for SQL Server and Azure SQL Database

GROUP BY {
       ALL column-expression [ ,...n ]
    | column-expression [ ,...n ]  WITH { CUBE | ROLLUP }
       }
 */

CREATE TABLE Sales ( Country VARCHAR(50), Region VARCHAR(50), Sales INT );

INSERT INTO sales VALUES (N'Canada', N'Alberta', 100);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 200);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 300);
INSERT INTO sales VALUES (N'United States', N'Montana', 100);

SELECT Country, Region, SUM(sales) AS TotalSales
FROM Sales.Sales
GROUP BY Country, Region;
----------------------------------------------------------------------------------------------------------


SELECT SalesOrderID, SUM(LineTotal) AS SubTotal
FROM Sales.SalesOrderDetail AS sod
GROUP BY SalesOrderID
ORDER BY SalesOrderID;

SELECT a.City, COUNT(bea.AddressID) EmployeeCount
FROM Person.BusinessEntityAddress AS bea
    INNER JOIN Person.Address AS a
        ON bea.AddressID = a.AddressID
GROUP BY a.City
ORDER BY a.City;

SELECT DATEPART(yyyy,OrderDate) AS N'Year'
    ,SUM(TotalDue) AS N'Total Order Amount'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(yyyy,OrderDate)
ORDER BY DATEPART(yyyy,OrderDate);

SELECT DATEPART(yyyy,OrderDate) AS N'Year'
    ,SUM(TotalDue) AS N'Total Order Amount'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(yyyy,OrderDate)
HAVING DATEPART(yyyy,OrderDate) >= N'2003'
ORDER BY DATEPART(yyyy,OrderDate);


----------------------------------------------------------------------------------------------------------
select * from Sales.SalesOrderDetail;
--1
select SpecialOfferID, sum(UnitPrice) as "UnitPrice SUM"
from sales.SalesOrderDetail
group by SpecialOfferID order by SpecialOfferID;

--2
select SpecialOfferID, count(SpecialOfferID) as "SpecialOfferID_Count"
from Sales.SalesOrderDetail
group by SpecialOfferID order by SpecialOfferID;

select COUNT(*) FROM Sales.SalesOrderDetail;

--3
SELECT ProductID, count(ProductID) as "ProductID_Count"
from Sales.SalesOrderDetail
group by ProductID order by ProductID;

-- quantos nomes de cada nome cadastrados
select * from Person.Person;

--4
select FirstName, count(FirstName) as "FirstName_Count"
from Person.Person
group by FirstName order by FirstName;

-- production.product media de preco para os produtos que sao pratas(silver)
select * from Production.Product;
--5
select color, avg(ListPrice) as "ListPrice"
from Production.Product
where Color = 'Silver'
group by color;

SELECT color, sum(ListPrice) as "ListPrice_Sum"
from Production.Product
where Color in ('Red','Silver')
group by color;

select sum(ListPrice)
from Production.Product;

select MiddleName, count(MiddleName) as "MiddleName_Count", FirstName
from Person.Person
group by MiddleName, FirstName order by FirstName;

select firstname, MiddleName
from Person.Person
where FirstName = 'Abby';

select MiddleName, count(FirstName) as "MiddleName_Count"
from Person.Person
group by MiddleName order by MiddleName;

-- media da quantidade que cada produto é vendido na loja
select * from Production.Product;

select * from Sales.SalesOrderDetail;

select ProductID, sum(OrderQty) as "OrderQty_SUM"
from Sales.SalesOrderDetail
group by ProductID order by ProductID;

select ProductID, avg(OrderQty) as "OrderQty_AVG"
from Sales.SalesOrderDetail
group by ProductID order by ProductID;

select ProductID, count(OrderQty) as "OrderQty", sum(OrderQty) as "OrderQty_SUM"
from Sales.SalesOrderDetail
where ProductID = '709'
group by ProductID

-- 10 vendas que no total tiveram os maiors valores de venda(line total) por produto do maior valor para o menor

select * from Sales.SalesOrderDetail;

select top 10 SalesOrderID
from sales.SalesOrderDetail;

select top 10 SalesOrderDetailID, max(UnitPrice) as "UnitPrice_MAX"
from sales.SalesOrderDetail
group by SalesOrderDetailID order by UnitPrice_MAX desc

select max(UnitPrice) from sales.SalesOrderDetail;

select top 10 ProductID, sum(LineTotal) "LineTotal_SUM"
from sales.SalesOrderDetail
group by ProductID order by LineTotal_SUM desc;

-- quantos produtos e qual a quantidade media de produtos temos cadastrados na ordem de servico (workOrder), agrupador por

select * from Production.WorkOrder;

select count(ProductID) as "ProductID_Count", avg(OrderQty) as "ProductID_AVG"
from Production.WorkOrder
group by ProductID;

/*
 1.somar os preços (unit price) de todas as specialofferid distintas da tabela saleorderdetail
 2.contar todos os preços da specialofferid distintas da tabela saleorderdetail
 3.saber a quantidade de produtos distintos (salesorderdetail)
 4.saber o quantidade de nomes distintos da (person)
 5.saber a media de preco para os produtos que sao pratas(silver)
 */

--1

--2

--3

--4

--5
