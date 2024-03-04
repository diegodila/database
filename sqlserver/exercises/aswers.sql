-- 1.COMO PEGAR A DATA ATUAL E CONCATENAR COM A PALAVRA 'LIMAO'
SELECT CONCAT(CAST(GETDATE() AS DATE), 'Limao');

-- 2.PEGAR O TIMESTAMP EM SELECT
SELECT CURRENT_TIMESTAMP;

-- 3.PEGAR NA TABELA PERSON AS MODIFICACOES ENTRE 2014 E HOJE
SELECT * FROM person.Person
WHERE ModifiedDate BETWEEN '2014' and GETDATE();

-- 4.PEGAR SOMENTE O ANO ATUAL
SELECT DATEPART(yy,GETDATE()) Date;
select year(getdate());

-- 5.PEGAR SOMENTE O MES ATUAL
SELECT DATEPART(mm,GETDATE());

--  6.somar os preços (unit price) de todas as specialofferid distintas da tabela saleorderdetail
SELECT SpecialOfferID, SUM(UnitPrice) AS "UnitPrice SUM"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID;

--  7.contar todos os preços da specialofferid distintas da tabela saleorderdetail
SELECT SpecialOfferID, COUNT(SpecialOfferID) AS "SpecialOfferID_Count"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID;

--  8.saber a quantidade de produtos distintos (salesorderdetail)
SELECT ProductID, COUNT(ProductID) AS "ProductID_Count"
FROM Sales.SalesOrderDetail
GROUP BY ProductID ORDER BY ProductID;

--  9.saber o quantidade de nomes distintos da (person)
SELECT FirstName, COUNT(FirstName) AS "FirstName_Count"
FROM Person.Person
GROUP BY FirstName ORDER BY FirstName;

--  10.saber a media de preco para os produtos que sao pratas(silver)
SELECT Color, AVG(ListPrice) AS "ListPrice"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY color;

--  11. Selecione o productNumber e o name transforme o productLine em category 'R' = 'Road', 'M' = 'Mountain','T' = 'Touring', 'S' = 'Other sale items' se não 'Not for sale'  (Production.Product)
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

--  12.Selecione o productNumber e o name e depois pesquise o listPrice e transforme em pricerange quando: listprice = 0 sera 'Mfg item - not for resale' , < 50 'Under 50', >= 50 and < 250 = 'under 250', >= 250 and < 1000 = 'under 1000', senao 'over 1000'
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

--  13.pegar primeiro nulo das colunas (Class, Color, ProductNumber) da tabela product e salvar como firstNotNull
SELECT Name, Class, Color, ProductNumber,
       COALESCE(Class,Color,ProductNumber) FirstNotNull
from production.Product;

--  14.Na tabela products pegar a primeira ocorrencia da linha qual que não é nulo e replicar para o dados na seguinte ordem de campos Color, ProductNumber
SELECT Name, Color, ProductNumber,
       COALESCE(Color, ProductNumber) AS FirstNotNull
FROM Production.Product;

--  15. selecione todas as colunas da tabela person que tem o suffix nulo
SELECT * FROM PERSON.Person
WHERE Suffix IS NULL;
--  16. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
SELECT ISNULL(Suffix,'GOIABA') ÉNULO,* FROM PERSON.Person

--  17. Converta os endereços secundários que são nulos em endereços primarios da tabela person.address (FAÇA COM COALESCE TAMBEM)
SELECT AddressLine1,AddressLine2,ISNULL(AddressLine2,AddressLine1) ÉNULO
FROM Person.Address;

SELECT AddressLine1,AddressLine2, COALESCE(AddressLine2,AddressLine1)ÉNULO
FROM Person.Address;

--  18. Quais nomes tem uma ocorrencia maior que 10 vezes, na tabela Person
SELECT FirstName, COUNT(FirstName) count
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) >= 10;

--  19. Quais sobrenomes tem uma ocorrencia maior que 2 vezes, na tabela Person
SELECT LastName, COUNT(LastName) count
FROM Person.Person
GROUP BY LastName
HAVING count(LastName) > 2;

--  20. Saber se os nomes Greg , Jeff e Sheena tem uma ocorrencia maior que 10 vezes na tabela Person
SELECT FirstName, COUNT(FirstName) as "FirstName_count"
FROM Person.Person
WHERE FirstName IN ('Greg', 'Jeff', 'Sheena')
GROUP BY FirstName
HAVING count(FirstName) >= 10
ORDER BY FirstName_count;

--  21. Quais produtos que no total de vendas estão entre 162k a 500k (salesorderdetail)
SELECT ProductID, SUM(LineTotal) LineTotal_SUM
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN  '162000' AND '500000';

--  22. Quais nomes tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'
SELECT FirstName, COUNT(FirstName) COUNT
FROM Person.Person
WHERE Title LIKE '%Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

--  23. Identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema, é preciso encontrar provincias que estão registradas no banco de dados mais que 1000 vezes
SELECT StateProvinceID, COUNT(StateProvinceID) COUNT_STATE
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

--  24. Selecione o TerritoryName, BussineessEntityID, SalesYTD, desloque o salesYTD 1 linha, na janela do territoryName
SELECT TerritoryName, BusinessEntityID,SalesYTD,
       LAG(SalesYTD,2,NULL) OVER ( PARTITION BY TerritoryName ORDER BY BusinessEntityID) PREV
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada');

SELECT TerritoryName, BusinessEntityID,SalesYTD,
       LAG(SalesYTD,1) OVER ( PARTITION BY TerritoryName ORDER BY BusinessEntityID) PREV
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada')
order by  TerritoryName;

select TerritoryName,BusinessEntityID,SalesYTD,
       lead(SalesYTD,1,null) over (partition by TerritoryName order by BusinessEntityID) as teste
from sales.vSalesPerson;

select TerritoryName,BusinessEntityID,SalesYTD,
       lead(SalesYTD,1,null) over (partition by TerritoryName order by BusinessEntityID) as teste
from sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada','Northeast');

SELECT
  ROW_NUMBER() OVER(ORDER BY name ASC) AS Row#,
  name, recovery_model_desc
FROM sys.databases
WHERE database_id < 5;

select TerritoryName, BusinessEntityID, SalesYTD
--        row_number() over (partition by TerritoryName order by TerritoryName) row_number
from sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada','Southwest')
order by TerritoryName;

-- 25. Contar os nomes de registros duplicados da tabela Person
select FirstName, count(FirstName)
from Person.Person
group by FirstName
having count(FirstName) > 1;