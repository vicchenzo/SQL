-- AULA 006. NA AULA ANTERIOR FIZEMOS USO DE UM REPLACE, NESTA AULA VAMOS USAR DOIS REPLACE DENTRO DE UM CÓDIGO

SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	Gender AS 'Sexo (Abrev.)',
	REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'Sexo'
FROM
	DimCustomer

--NO SEU CÓDIGO, USAMOS REPLACE DE FORMA ANINHADA PARA SUBSTITUIR DOIS VALORES DIFERENTES ('M' E 'F') EM UMA ÚNICA COLUNA (GENDER):
-- PRIMEIRO REPLACE: Isso substitui todas as ocorrências de 'M' por 'Masculino' na coluna Gender.
-- SEGUNDO REPLACE: Aqui, o resultado do primeiro REPLACE (onde 'M' foi substituído por 'Masculino') é passado para o segundo REPLACE. O segundo REPLACE substitui todas as ocorrências de 'F' por 'Feminino'.

--PROCESSO COMPLETO:
-- A coluna Gender contém valores 'M' ou 'F'.
-- O primeiro REPLACE transforma 'M' em 'Masculino'.
-- O resultado intermediário do primeiro REPLACE é então passado para o segundo REPLACE.
-- O segundo REPLACE transforma 'F' em 'Feminino'.

--POR EXEMPLO, SE A COLUNA GENDER TEM O VALOR 'M', O PROCESSO SERÁ:
-- Primeiro REPLACE substitui 'M' por 'Masculino'.
-- Segundo REPLACE não encontra 'F' (porque o valor já foi substituído para 'Masculino'), então o resultado final é 'Masculino'.

--SE A COLUNA GENDER TEM O VALOR 'F', O PROCESSO SERÁ:
-- Primeiro REPLACE não encontra 'M' (então o valor permanece 'F').
-- Segundo REPLACE substitui 'F' por 'Feminino'.

-- CASO A ORDEM FOSSE INVERTIDA
-- REPLACE(REPLACE(Gender, 'F', 'Feminino'), 'M', 'Masculino')

-- Como a palavra Feminino tem a letra m, não podemos fazer o REPLACE de F por Feminino primeiro porque, depois, ao fazer o REPLACE de M por Masculino, todos os Fs que viraram Feminino terão sua letra m substituída também, transformando Feminino em FeMasculinoinino.
--Então, ciente disso, no REPLACE mais interno, que será executado primeiro, substituímos tudo que for M por Masculino (enquanto o gênero F ainda é apenas F); depois, trocamos F por Feminino no REPLACE mais externo, que será executado depois.Essa é a lógica: sempre que um REPLACE possa interferir em outro, primeiro executamos o que pode modificar o que não queremos, para depois executar o que não vai modificar nada além do que precisamos. E como o código funciona do mais interno para o mais externo, colocamos o que pode interferir onde não deve no interno, e o que não interfere no externo.
