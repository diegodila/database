/*     ****** RESULTADOS  ****.SQL *******
 1.COMO PEGAR A DATA ATUAL E CONCATENAR COM A PALAVRA 'LIMAO'
 2.PEGAR O TIMESTAMP EM SELECT
 3.PEGAR NA TABELA PERSON AS MODIFICACOES ENTRE 2014 E HOJE
 4.PEGAR SOMENTE O ANO ATUAL
 5.PEGAR SOMENTE O MES ATUAL
*/

/*     ****** RESULTADOS NO *****.SQL *******
 6.somar os preços (unit price) de todas as specialofferid distintas da tabela saleorderdetail
 7.contar todos os preços da specialofferid distintas da tabela saleorderdetail
 8.saber a quantidade de produtos distintos (salesorderdetail)
 9.saber o quantidade de nomes distintos da (person)
 10.saber a media de preco para os produtos que sao pratas(silver)
 */

 /*     ****** RESULTADOS NO case.SQL *******
 11. Selecione o productNumber e o name transforme o productLine em category 'R' = 'Road', 'M' = 'Mountain','T' = 'Touring', 'S' = 'Other sale items' se não 'Not for sale'  (Production.Product)
 12.Selecione o productNumber e o name e depois pesquise o listPrice e transforme em pricerange quando:
    listprice = 0 sera 'Mfg item - not for resale'
 < 50 'Under 50'
 >= 50 and < 250 = 'under 250'
 >= 250 and < 1000 = 'under 1000'
senao 'over 1000'
 */

/*     ****** RESULTADOS  ***.SQL *******
 13.pegar primeiro nao nulo das colunas (Class, Color, ProductNumber) da tabela product e salvar como firstNotNull
 14.Na tabela products pegar a primeira ocorrencia da linha qual que não é nulo e replicar para o dados na seguinte ordem de campos Color, ProductNumber
 */

/*     ****** RESULTADOS NO ***.SQL *******
 15. selecione todas as colunas da tabela person que tem o suffix nulo
 16. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
 17. Converta os endereços secundários que são nulos em endereços primarios da tabela person.address (FAÇA COM COALESCE TAMBEM)
 */

/*     ****** RESULTADOS NO ****.SQL *******
 18. Quais nomes tem uma ocorrencia maior que 10 vezes, na tabela Person
 19. Quais sobrenomes tem uma ocorrencia maior que 2 vezes, na tabela Person
 20. Saber se os nomes Greg , Jeff e Sheena tem uma ocorrencia maior que 10 vezes na tabela Person
 21. Quais produtos que no total de vendas estão entre 162k a 500k (salesorderdetail)
 22. Quais nomes tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'
 23. Identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema, é preciso encontrar provincias que estão registradas no banco de dados mais que 1000 vezes (trazer os nomes das provincias tambem)
*/

/*     ****** RESULTADOS do ****.SQL *******
 1. Selecione o TerritoryName, BusinessEntityID, SalesYTD, desloque o salesYTD 1 linha, na janela do territoryName (vSalesPerson)
 */

/*     ****** RESULTADOS do ****.SQL *******
  Contar os nomes de registros duplicados da tabela Person
 */
