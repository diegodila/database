/*     ****** RESULTADOS  ****.SQL *******
 1.COMO PEGAR A DATA ATUAL E CONCATENAR COM A PALAVRA 'LIMAO'
 2.PEGAR O TIMESTAMP EM SELECT
 3.PEGAR NA TABELA PERSON AS MODIFICACOES ENTRE 2014 E HOJE
 4.PEGAR SOMENTE O ANO ATUAL
 5.PEGAR SOMENTE O MES ATUAL
*/

/*     ****** RESULTADOS NO *****.SQL *******
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

/*     ****** RESULTADOS  ***.SQL *******
 1.pegar primeiro nao nulo das colunas (Class, Color, ProductNumber) da tabela product e salvar como firstNotNull
 2.Na tabela products pegar a primeira ocorrencia da linha qual que não é nulo e replicar para o dados na seguinte ordem de campos Color, ProductNumber
 */

/*     ****** RESULTADOS NO ***.SQL *******
 1. selecione todas as colunas da tabela person que tem o suffix nulo
 2. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
 3. Converta os endereços secundários que são nulos em endereços primarios da tabela person.address (FAÇA COM COALESCE TAMBEM)
 */

/*     ****** RESULTADOS NO ****.SQL *******
 1. Quais nomes tem uma ocorrencia maior que 10 vezes, na tabela Person
 2. Quais sobrenomes tem uma ocorrencia maior que 2 vezes, na tabela Person
 3. Saber se os nomes Greg , Jeff e Sheena tem uma ocorrencia maior que 10 vezes na tabela Person
 4. Quais produtos que no total de vendas estão entre 162k a 500k (salesorderdetail)
 5. Quais nomes tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'
 6. Identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema, é preciso encontrar provincias que estão registradas no banco de dados mais que 1000 vezes (trazer os nomes das provincias tambem)
*/

/*     ****** RESULTADOS do ****.SQL *******
 1. Selecione o TerritoryName, BusinessEntityID, SalesYTD, desloque o salesYTD 1 linha, na janela do territoryName (vSalesPerson)
 */

/*     ****** RESULTADOS do ****.SQL *******
  Contar os nomes de registros duplicados da tabela Person
 */
