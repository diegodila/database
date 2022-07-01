SELECT Name, Class, Color, ProductNumber,
COALESCE(Class, Color, ProductNumber) AS FirstNotNull
FROM Production.Product
order by Name

SELECT Name, Color, ProductNumber,
       COALESCE(Color, ProductNumber) AS FirstNotNull
FROM Production.Product;

CREATE TABLE dbo.wages
(
    emp_id        TINYINT   NULL,
    hourly_wage   DECIMAL   NULL,
    salary        DECIMAL   NULL,
    commission    DECIMAL   NULL,
    num_sales     TINYINT   NULL
);

SELECT emp_id, hourly_wage, salary, commission, num_sales, CAST(COALESCE(hourly_wage * 40 * 52,
   salary,
   commission * num_sales) AS DECIMAL(10,2)) AS TotalSalary
FROM dbo.wages
