-- some duas colunas da tabela salesOrderDetail

/*     ****** RESULTADOS no response COALESCE.SQL *******
 1.pegar primeiro nulo das colunas (Class, Color, ProductNumber) da tabela product e salvar como firstNotNull
 2.Na tabela products pegar a primeira ocorrencia da linha qual que não é nulo e replicar para o dados na seguinte ordem de campos Color, ProductNumber
 */

/*     ****** RESULTADOS NO response DATE.SQL *******
-- COMO PEGAR A DATA ATUAL E CONCATENAR COM A PALAVRA 'LIMAO'
-- PEGAR O TIMESTAMP EM SELECT
-- PEGAR NA TABELA PERSON AS MODIFICACOES ENTRE 2014 E HOJE
-- PEGAR SOMENTE O ANO ATUAL
-- PEGAR SOMENTE O MES ATUAL
--****** RESULTADOS NO DATE.SQL *******
*/

/*     ****** RESULTADOS NO groupby.SQL *******
 1.somar os preços (unit price) de todas as specialofferid distintas da tabela saleorderdetail
 2.contar todos os preços da specialofferid distintas da tabela saleorderdetail
 3.saber a quantidade de produtos distintos (salesorderdetail)
 4.saber o quantidade de nomes distintos da (person)
 5.saber a media de preco para os produtos que sao pratas(silver)
 */


/*     ****** RESULTADOS NO case.SQL *******
 1. Selecione o productNumber e o name transforme o productLine em category 'R' = 'Road', 'M' = 'Mountain','T' = 'Touring', 'S' = 'Other sale items' se não 'Not for sale'  (Production.Product)
 2.Selecione o productNumber e o name e depois pesquise o listPrice e transforme em pricerange quando:
    listprice = 0 sera 'Mfg item - not for resale'
 < 50 'Under 50'
 >= 50 and < 250 = 'under 250'
 >= 250 and < 1000 = 'under 1000'
senao 'over 1000'
 */


/*     ****** RESULTADOS NO isnull.SQL *******
 1. selecione todas as colunas da tabela person que tem o suffix nulo
 2. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
 3. Converta os endereços secundários que são nulos em endereços primarios da tabela person.address (FAÇA COM COALESCE TAMBEM)
 */

/*     ****** RESULTADOS NO having.SQL *******
 1. Quais nomes tem uma ocorrencia maior que 10 vezes, na tabela Person
 2. Quais sobrenomes tem uma ocorrencia maior que 2 vezes, na tabela Person
 3.
*/

SELECT FirstName, COUNT(FirstName) count
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) >= 10;

SELECT LastName, count(LastName) count
FROM Person.Person
GROUP BY LastName
HAVING count(LastName) > 2;

select FirstName, count(FirstName) as "FirstName_count"
from Person.Person
where FirstName in ('Greg', 'Jeff')
group by FirstName
having count(FirstName) >= 10
order by FirstName_count