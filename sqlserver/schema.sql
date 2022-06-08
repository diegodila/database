EXEC sp_pkeys sales.SalesOrderDetail;

EXEC sp_pkeys
  @table_name = SalesOrderDetail,
  @table_owner = Sales;

EXEC sp_pkeys Person;

SELECT
  TABLE_NAME,
  COLUMN_NAME,
  CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE


SELECT *
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Person'