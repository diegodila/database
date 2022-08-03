-- ****** RESULTADOS do date.SQL *******
select concat(cast(getdate() as Date), 'Limao');

select current_timestamp;

select * from person.Person
where ModifiedDate between '2014' and getdate();

select datepart(yy,getdate()) Date;

select datepart(mm,getdate());
-- ***************************************************

-- ****** RESULTADOS do groupby.SQL *******
--1
select SpecialOfferID, sum(UnitPrice) as "UnitPrice SUM"
from sales.SalesOrderDetail
group by SpecialOfferID order by SpecialOfferID;

--2
select SpecialOfferID, count(SpecialOfferID) as "SpecialOfferID_Count"
from Sales.SalesOrderDetail
group by SpecialOfferID order by SpecialOfferID;

--3
SELECT ProductID, count(ProductID) as "ProductID_Count"
from Sales.SalesOrderDetail
group by ProductID order by ProductID;

--4
select FirstName, count(FirstName) as "FirstName_Count"
from Person.Person
group by FirstName order by FirstName;

-- production.product media de preco para os produtos que sao pratas(silver)
select * from Production.Product;
--5
select color, avg(ListPrice) as "ListPrice"
from Production.Product
where Color = 'Silver'
group by color;
-- ***************************************************

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
-- ***************************************************

/*     ****** RESULTADOS DO isnull.SQL *******
 1. selecione todas as colunas da tabela person que tem o suffix nulo
 2. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
 3. Converta os endereços secundários que são nulos em endereços primarios da tabela person.address
 */

SELECT * FROM PERSON.Person
WHERE Suffix IS NULL;

SELECT ISNULL(Suffix,'GOIABA') ÉNULO,* FROM PERSON.Person

SELECT AddressLine1,AddressLine2,ISNULL(AddressLine2,AddressLine1) ÉNULO
FROM PERSON.Address;

SELECT AddressLine1,AddressLine2, COALESCE(AddressLine2,AddressLine1)ÉNULO
FROM Person.Address;
-- ***************************************************
