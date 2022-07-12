/*
 LAG (scalar_expression [,offset] [,default])
    OVER ( [ partition_by_clause ] order_by_clause )
 */


USE AdventureWorks
GO
SELECT BusinessEntityID, YEAR(QuotaDate) AS SalesYear, SalesQuota AS CurrentQuota,
       LAG(SalesQuota, 1,0) OVER (ORDER BY YEAR(QuotaDate)) AS PreviousQuota
FROM Sales.SalesPersonQuotaHistory
WHERE BusinessEntityID = 275 AND YEAR(QuotaDate) IN ('2005','2006');


SELECT TerritoryName, BusinessEntityID, SalesYTD,
       LAG (SalesYTD, 1, 0) OVER (PARTITION BY TerritoryName ORDER BY SalesYTD DESC) AS PrevRepSales
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada')
ORDER BY TerritoryName;

SELECT TerritoryName, BusinessEntityID, SalesYTD,
       LAG (SalesYTD, 2, 0) OVER (ORDER BY SalesYTD DESC) AS PrevRepSales
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada')
ORDER BY SalesYTD desc;

CREATE TABLE T (a INT, b INT, c INT);
GO
INSERT INTO T VALUES (1, 1, -3), (2, 2, 4), (3, 1, NULL), (4, 3, 1), (5, 2, NULL), (6, 1, 5);


SELECT b, c,2*c c_, b*(SELECT MIN(b) FROM T) b_,
    LAG(2*c, b*(SELECT MIN(b) FROM T)) OVER (ORDER BY a) AS i
FROM T;

SELECT a,b, c,b*(SELECT MIN(b) FROM T),2*b,
    LAG(2*b, b*(SELECT MIN(b) FROM T)) OVER (ORDER BY a) AS i
FROM T;

select  b, b*(SELECT MIN(b) FROM T) from T