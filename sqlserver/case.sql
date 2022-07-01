with test as (
        select CASE		WHEN	SUBSTRING([SalesOrderNumber],1,3) = 'SO4' THEN 'ser'
        ELSE				SUBSTRING([SalesOrderNumber],1,3)
        end as fo
        from Sales.SalesOrderHeader
)
select * from test


    
WITH test (PersonType)
AS
(
	SELECT PersonType FROM Person.Person p
)
SELECT *
FROM test;


-- Define the CTE expression name and column list.
WITH Sales_CTE (SalesPersonID, SalesOrderID, SalesYear)

AS
-- Define the CTE query.
(
    SELECT SalesPersonID, SalesOrderID, YEAR(OrderDate) AS SalesYear
    FROM Sales.SalesOrderHeader
    WHERE SalesPersonID IS NOT NULL
)
-- Define the outer query referencing the CTE name.
SELECT SalesPersonID, COUNT(SalesOrderID) AS TotalSales, SalesYear
FROM Sales_CTE
GROUP BY SalesYear, SalesPersonID
ORDER BY SalesPersonID, SalesYear;


-- Syntax for SQL Server, Azure SQL Database and Azure Synapse Analytics

/*
 --Simple CASE expression:
 CASE input_expression
     WHEN when_expression THEN result_expression [ ...n ]
     [ ELSE else_result_expression ]
END

 --Searched CASE expression:
CASE
     WHEN Boolean_expression THEN result_expression [ ...n ]
     [ ELSE else_result_expression ]
END

 */

USE AdventureWorks
GO
SELECT   ProductNumber, Category =
      CASE ProductLine
         WHEN 'R' THEN 'Road'
         WHEN 'M' THEN 'Mountain'
         WHEN 'T' THEN 'Touring'
         WHEN 'S' THEN 'Other sale items'
         ELSE 'Not for sale'
      END,
   Name
FROM Production.Product
ORDER BY ProductNumber;

SELECT   ProductNumber, Name, "Price Range" =
      CASE
         WHEN ListPrice =  0 THEN 'Mfg item - not for resale'
         WHEN ListPrice < 50 THEN 'Under $50'
         WHEN ListPrice >= 50 and ListPrice < 250 THEN 'Under $250'
         WHEN ListPrice >= 250 and ListPrice < 1000 THEN 'Under $1000'
         ELSE 'Over $1000'
      END
FROM Production.Product
ORDER BY ProductNumber ;





/*
 1. transforme o productLine em category 'R' = 'Road', 'M' = 'Mountain','T' = 'Touring', 'S' = 'Other sale items' se não 'Not for sale'  (Production.Product)

 2.Selecione o productNumner e o name e depois pesquise o listPrice e transforme em pricerange quando:
    listprice = 0 sera 'Mfg item - not for resale'
 < 50 'Under 50'
 >= 50 and < 250 = 'under 250'
 >= 250 and < 1000 = 'under 1000'
senao 'over 1000'
 */

select ProductNumber, Category =
                      case ProductLine
                          when 'R' then 'Road'
                          when 'M' then 'Montain'
                          when 'T' then 'Touring'
                          when 'S' then 'Other sale items'
                          else 'Not for sale' end,
    Name
from production.Product

select ProductNumber, Name, PriceRange = Case
    when ListPrice = 0 then 'MFG - not for resale'
    when ListPrice < 50 then 'Under 50'
when ListPrice >= 50 and ListPrice <= 250 then 'Under 250'
when ListPrice >= 250 and ListPrice <= 1000 then 'Under 1000'
else 'Over 1000' end
from Production.Product
order by ProductNumber;

select ProductNumber, Name, PriceRange = Case
    when ListPrice = 0 then 'MFG - not for resale'
    when ListPrice < 50 then 'Under 50'
when ListPrice >= 50 and ListPrice <= 250 then 'Under 250'
when ListPrice >= 250 and ListPrice <= 1000 then 'Under 1000'
else 'Over 1000' end
from Production.Product
order by ProductNumber;
