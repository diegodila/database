-- tipos de dados

-- 1 booleanos 2. caractere 3. numeros 4. temporais

-- booleanos
-- por padrao ele é iniciado como nulo e pode receber 1 ou 0
--BIT

-- caracteres
-- tamanho fixo - char // permite inser ate uma quantiaade fixa de caracteres e sempre ocupa tod o espaço reservado 10/50 sempre ocupa esse espaço na memoria
-- tamanho variaveis - varchar ou nvarchar // permite inserir ate uma quantidade que for definida, porem só usa o espaço que for preenchido

-- numeros
-- valores exatos
-- // tinyint nao tem parte valor fracionados (ex: 1.43, 24.33) somente 1,121212,232323,2323
-- // smallint - limite maior
-- // int - limite maior
-- // bigint -- limite maior
-- // numeric ou decimall - valores exatos, porem permite ter parte fracionados, que tambem pode ser especificado a precisao e escala (escala é o numero de digitos na parte fracional) ex: numeric(5,2)

-- valores aproximados
-- // real - precisao aproximada de ate 15 digitos
-- // float - mesmo conceito de real

-- valores temporais
-- date - amarzena data no formato aaaa/mm/dd
-- datetime - armazena data e horas no formato aaaa/mm/dd:mm:ss
-- datetime2 - armazena data e horas com adicao do milissegundos no formato aaaa/mm/dd:mm:ssssss
-- smalldatetime - armazena data e hora respeitando o limite no formato '1900-01-01:00:00 ate 2079
-- time - horas, minutos, segundos e milissegundos respeitando o limite de '00:00:00.00000 to'23:59:59.999999'
-- datetimeoffset permite armazenar info de date e horas incluindo o fuso