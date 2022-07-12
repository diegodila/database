select isnull(null,'paçoca') énulo
--1
select * from Person.Person
where Suffix is null
--2
select isnull(Suffix,'cadhh') énulo,*
from Person.Person
--3
select AddressLine1, AddressLine2, isnull(AddressLine2,AddressLine1) from person.Address


/*
 1. selecione todas as colunas da tabela person que tem o suffix nulo
 2. tranforme os dados da tabela person e coluna suffix que são nulos em goiaba *, a coluna transformada deverá chamar énulo
 3. Converta os endereços secundários em endereços primarios da tabela person.address
 */
