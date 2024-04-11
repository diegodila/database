with test as (
        select CASE		WHEN	SUBSTRING([SalesOrderNumber],1,3) = 'SO4' THEN 'ser'
        ELSE				SUBSTRING([SalesOrderNumber],1,3)
        end as fo
        from Sales.SalesOrderHeader
)
select * from test



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
--1
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

--2
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


SELECT BusinessEntityID, SalariedFlag
FROM HumanResources.Employee
ORDER BY CASE SalariedFlag WHEN 1 THEN BusinessEntityID END DESC
        ,CASE WHEN SalariedFlag = 0 THEN BusinessEntityID END;

SELECT BusinessEntityID, SalariedFlag
FROM HumanResources.Employee
