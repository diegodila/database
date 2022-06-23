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
