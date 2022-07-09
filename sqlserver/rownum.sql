SELECT
  name, recovery_model_desc
FROM sys.databases
WHERE database_id < 5
ORDER BY name ASC;

SELECT
  ROW_NUMBER() OVER(ORDER BY name ASC) AS Row#,
  name, recovery_model_desc
FROM sys.databases
WHERE database_id < 5;

SELECT
  ROW_NUMBER() OVER(PARTITION BY recovery_model_desc ORDER BY name ASC)
    AS Row#,
  name, recovery_model_desc
FROM sys.databases WHERE database_id < 5;

USE AdventureWorks;
GO
SELECT ROW_NUMBER() OVER(ORDER BY SalesYTD DESC) AS Row,
    FirstName, LastName, ROUND(SalesYTD,2,1) AS "Sales YTD", SalesYTD
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL AND SalesYTD <> 0;

USE AdventureWorks;
GO
WITH OrderedOrders AS
(
    SELECT SalesOrderID, OrderDate,
    ROW_NUMBER() OVER (ORDER BY OrderDate) AS RowNumber
    FROM Sales.SalesOrderHeader
)
SELECT SalesOrderID, OrderDate, RowNumber
FROM OrderedOrders
WHERE RowNumber BETWEEN 50 AND 60;


USE AdventureWorks;
GO
SELECT FirstName, LastName, TerritoryName, ROUND(SalesYTD,2,1) AS SalesYTD,
ROW_NUMBER() OVER(PARTITION BY TerritoryName ORDER BY SalesYTD DESC)
  AS Row
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL AND SalesYTD <> 0
ORDER BY TerritoryName;


