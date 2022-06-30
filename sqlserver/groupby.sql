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
