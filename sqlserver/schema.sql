EXEC sp_pkeys SalesOrderDetail;

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

SELECT TABLE_NAME, COLUMN_NAME, COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'ColumnID') AS COLUMN_ID
FROM AdventureWorks.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'PERSON';


SELECT *
FROM INFORMATION_SCHEMA.COLUMNS

SELECT * from INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE a
inner join INFORMATION_SCHEMA.TABLE_CONSTRAINTS CTU on a.CONSTRAINT_NAME = CTU.CONSTRAINT_NAME
WHERE a.TABLE_NAME = 'PERSON'

SELECT PayFrequency FROM HumanResources.EmployeePayHistory
WHERE PayFrequency <> 2


SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE  TABLE_NAME = 'EMPLOYEEPAYHISTORY'

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE  TABLE_NAME = 'EMPLOYEEPAYHISTORY'

SELECT * FROM INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_SCHEMA

SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE CONSTRAINT_NAME = 'FK_Person_BusinessEntity_BusinessEntityID'

SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_NAME = 'BUSINESSENTITY'

-- VER TODAS AS CONSTRAINTS DA TABELA
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'PERSON'

select * from INFORMATION_SCHEMA.CONSTRAINT_TABLE_USAGE
where TABLE_NAME = 'person'

SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS

-- 2
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'PERSON'

-- 3
select * from INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_NAME = 'PERSON'
-- 3
select * from INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_NAME = 'BUSINESSENTITY'

-- 4
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'PERSON'
AND CONSTRAINT_TYPE = 'PRIMARY KEY'

/*
 1. crie um exec para mostrar o table name e o table owner
 2. mostre a tabela de schemas de colunas
 3. como ver todas as constraints e quais são suas colunas de uma tabela
 4. COMO VER TODAS AS CONSTRAINTS CHECKS DA TABELA PERSON
 5. COMO VER TODAS AS CONSTRAINTS PRIMARY_KEY DA TABELA PERSON
*/

SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS
WHERE CONSTRAINT_NAME = 'CK_Person_EmailPromotion'

SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
INNER JOIN INFORMATION_SCHEMA.CHECK_CONSTRAINTS CC on CONSTRAINT_COLUMN_USAGE.CONSTRAINT_NAME = CC.CONSTRAINT_NAME
WHERE CC.CONSTRAINT_NAME = 'CK_Person_EmailPromotion'

SELECT EmailPromotion FROM Person.Person


