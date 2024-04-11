/*
 RANK() gives you the ranking within your ordered partition. Ties are assigned the same rank, with the next ranking(s) skipped. So, if you have 3 items at rank 2, the next rank listed would be ranked 5.

 DENSE_RANK() again gives you the ranking within your ordered partition, but the ranks are consecutive. No ranks are skipped if there are ranks with multiple items.

 basicamente o rank pula os numeros consecutivos ex. classif. 1, 1, 3, e dense_rank não ex: 1,1,2
 */

USE AdventureWorks;
SELECT i.ProductID, p.Name, i.LocationID, i.Quantity
    ,RANK() OVER
    (PARTITION BY i.LocationID ORDER BY i.Quantity DESC) AS Rank
FROM Production.ProductInventory AS i
INNER JOIN Production.Product AS p
    ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 AND 4
ORDER BY i.LocationID;

SELECT TOP(10) BusinessEntityID, Rate,
       RANK() OVER (ORDER BY Rate DESC) AS RankBySalary
FROM HumanResources.EmployeePayHistory AS eph1
WHERE RateChangeDate = (SELECT MAX(RateChangeDate)
                        FROM HumanResources.EmployeePayHistory AS eph2
                        WHERE eph1.BusinessEntityID = eph2.BusinessEntityID)
ORDER BY BusinessEntityID;