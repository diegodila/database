EXPLAIN (SELECT Color, AVG(ListPrice) AS "ListPrice"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY color);

select color, Avg(ListPrice) as listprice
from production.Product
group by color
having Color = 'Silver';

EXEC sp_helpdb @dbname= 'AdventureWorks'

select exists(person.Person);


https://www.geeksforgeeks.org/best-practices-for-sql-query-optimizations/?ref=lbp
https://www.geeksforgeeks.org/sql-performance-tuning/
https://adamtheautomator.com/performance-tuning-in-sql-server/