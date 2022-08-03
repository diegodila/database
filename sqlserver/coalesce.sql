use AdventureWorks
SELECT Name, Class, Color, ProductNumber,
COALESCE(Class, Color, ProductNumber) AS FirstNotNull
FROM Production.Product
order by Name;

select coalesce(null,null,2,3,4)

SELECT Name, Color, ProductNumber,
       COALESCE(Color, ProductNumber) AS FirstNotNull
FROM Production.Product;

SELECT Name, Class, Color, ProductNumber,
COALESCE(Class, Color, ProductNumber) AS FirstNotNull
FROM Production.Product;

-------------------------------------------------------------------------------------------------
SET NOCOUNT ON;
GO
USE tempdb;
IF OBJECT_ID('dbo.wages') IS NOT NULL
    DROP TABLE wages;
GO
CREATE TABLE dbo.wages
(
    emp_id        TINYINT   IDENTITY,
    hourly_wage   DECIMAL   NULL,
    salary        DECIMAL   NULL,
    commission    DECIMAL   NULL,
    num_sales     TINYINT   NULL
);
GO
INSERT dbo.wages (hourly_wage, salary, commission, num_sales)
VALUES
    (10.00, NULL, NULL, NULL),
    (20.00, NULL, NULL, NULL),
    (30.00, NULL, NULL, NULL),
    (40.00, NULL, NULL, NULL),
    (NULL, 10000.00, NULL, NULL),
    (NULL, 20000.00, NULL, NULL),
    (NULL, 30000.00, NULL, NULL),
    (NULL, 40000.00, NULL, NULL),
    (NULL, NULL, 15000, 3),
    (NULL, NULL, 25000, 2),
    (NULL, NULL, 20000, 6),
    (NULL, NULL, 14000, 4);
GO
SET NOCOUNT OFF;
GO
SELECT CAST(COALESCE(hourly_wage * 40 * 52,
   salary,
   commission * num_sales) AS money) AS 'Total Salary'
FROM dbo.wages
ORDER BY 'Total Salary';
GO

SELECT emp_id, hourly_wage, salary, commission, num_sales, CAST(COALESCE(hourly_wage * 40 * 52,
   salary,
   commission * num_sales) AS DECIMAL(10,2)) AS TotalSalary
FROM dbo.wages;
