DECLARE @d DATETIME = CURRENT_TIMESTAMP
SELECT
   DATEPART(year, @d) year,
   DATEPART(quarter, @d) quarter,
   DATEPART(month, @d) month,
   DATEPART(day, @d) day,
   DATEPART(hour, @d) hour,
   DATEPART(minute, @d) minute,
   DATEPART(second, @d) second;

-- Current Datetime
SELECT
   GETDATE()         as 'GETDATE()'
  ,CURRENT_TIMESTAMP as 'CURRENT_TIMESTAMP'
  ,SYSDATETIME()     as 'SYSDATETIME()';

SELECT concat('today-',CAST(GETDATE() AS DATE)) 'CurrentDate';
SELECT cast(getdate() as date)
SELECT CAST(CURRENT_TIMESTAMP AS DATE)
SELECT SYSDATETIME() AS SYS
SELECT GETDATE() AS GETDATE

select DateCreated from Sales.ShoppingCartItem
where DateCreated between '2010-01-01' and cast(getdate() as date)


SELECT * FROM Person.Person
WHERE ModifiedDate BETWEEN '2014' AND GETDATE()
ORDER BY ModifiedDate DESC


