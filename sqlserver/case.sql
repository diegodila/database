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
