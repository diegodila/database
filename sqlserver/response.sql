/*     ****** RESULTADOS NO response DATE.SQL *******
 1.COMO PEGAR A DATA ATUAL E CONCATENAR COM A PALAVRA 'LIMAO'
 2.PEGAR O TIMESTAMP EM SELECT
 3.PEGAR NA TABELA PERSON AS MODIFICACOES ENTRE 2014 E HOJE
 4.PEGAR SOMENTE O ANO ATUAL
 5.PEGAR SOMENTE O MES ATUAL
--****** RESULTADOS NO DATE.SQL *******
*/
SELECT CONCAT(CAST(GETDATE() AS DATE), 'Limao');

SELECT CURRENT_TIMESTAMP;

SELECT * FROM person.Person
WHERE ModifiedDate BETWEEN '2014' and GETDATE();

SELECT DATEPART(yy,GETDATE()) Date;

SELECT DATEPART(mm,GETDATE());
-- *********************************************************************

/*     ****** RESULTADOS DO groupby.SQL *******
 1.somar os preços (unit price) de todas as specialofferid distintas da tabela saleorderdetail
 2.contar todos os preços da specialofferid distintas da tabela saleorderdetail
 3.saber a quantidade de produtos distintos (salesorderdetail)
 4.saber o quantidade de nomes distintos da (person)
 5.saber a media de preco para os produtos que sao pratas(silver)
 */

SELECT SpecialOfferID, SUM(UnitPrice) AS "UnitPrice SUM"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID;

SELECT SpecialOfferID, COUNT(SpecialOfferID) AS "SpecialOfferID_Count"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID;

SELECT ProductID, COUNT(ProductID) AS "ProductID_Count"
FROM Sales.SalesOrderDetail
GROUP BY ProductID ORDER BY ProductID;

SELECT FirstName, COUNT(FirstName) AS "FirstName_Count"
FROM Person.Person
GROUP BY FirstName ORDER BY FirstName;

SELECT Color, AVG(ListPrice) AS "ListPrice"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY color;
-- *********************************************************************

-- ****** RESULTADOS do COALESCE.SQL *******
/*
 1.pegar primeiro nulo das colunas (Class, Color, ProductNumber) da tabela product e salvar como firstNotNull
 2.Na tabela products pegar a primeira ocorrencia da linha qual que não é nulo e replicar para o dados na seguinte ordem de campos Color, ProductNumber
 */

SELECT Name, Class, Color, ProductNumber,
       COALESCE(Class,Color,ProductNumber) FirstNotNull
from production.Product;

SELECT Name, Color, ProductNumber,
       COALESCE(Color, ProductNumber) AS FirstNotNull
FROM Production.Product;
-- *********************************************************************

/*     ****** RESULTADOS DO isnull.SQL *******
 1. selecione todas as colunas da tabela person que tem o suffix nulo
 2. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
 3. Converta os endereços secundários que são nulos em endereços primarios da tabela person.address
 */

SELECT * FROM PERSON.Person
WHERE Suffix IS NULL;

SELECT ISNULL(Suffix,'GOIABA') ÉNULO,* FROM PERSON.Person

SELECT AddressLine1,AddressLine2,ISNULL(AddressLine2,AddressLine1) ÉNULO
FROM Person.Address;

SELECT AddressLine1,AddressLine2, COALESCE(AddressLine2,AddressLine1)ÉNULO
FROM Person.Address;
-- *********************************************************************

/*     ****** RESULTADOS DO having.SQL *******
 1. Quais nomes tem uma ocorrencia maior que 10 vezes, na tabela Person
 2. Quais sobrenomes tem uma ocorrencia maior que 2 vezes, na tabela Person
 3. Saber se os nomes Greg , Jeff e Sheena tem uma ocorrencia maior que 10 vezes na tabela Person
 4. Quais produtos que no total de vendas estão entre 162k a 500k (salesorderdetail)
 5. Quais nomes tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'
 6. Identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema, é preciso encontrar provincias que estão registradas no banco de dados mais que 1000 vezes
*/

SELECT FirstName, COUNT(FirstName) count
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) >= 10;

SELECT LastName, count(LastName) count
FROM Person.Person
GROUP BY LastName
HAVING count(LastName) > 2;

SELECT FirstName, COUNT(FirstName) as "FirstName_count"
FROM Person.Person
WHERE FirstName IN ('Greg', 'Jeff', 'Sheena')
GROUP BY FirstName
HAVING count(FirstName) >= 10
ORDER BY FirstName_count;

SELECT ProductID, sum(LineTotal) LineTotal_SUM
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN  '162000' AND '500000';

SELECT FirstName, COUNT(FirstName) COUNT
FROM Person.Person
WHERE Title LIKE '%Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

SELECT StateProvinceID, COUNT(StateProvinceID) COUNT_STATE
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;
-- *********************************************************************
/*     ****** RESULTADOS do lag.SQL *******
 1. Selecione o TerritoryName, BussineessEntityID, SalesYTD, desloque o salesYTD 1 linha, na janela do territoryName
 */

SELECT TerritoryName, BusinessEntityID,SalesYTD,
       LAG(SalesYTD,2,NULL) OVER ( PARTITION BY TerritoryName ORDER BY BusinessEntityID) PREV
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada');
-- *********************************************************************
