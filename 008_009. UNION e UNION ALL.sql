-- UNION e UNION ALL

-- UNION
-- AS TABELAS ABAIXO TEM EXATAMENTE A MESMA ESTRUTURA DE COLUNAS
-- SE EXISTIR UMA SITUAÇÃO QUE EXISTIR DUAS TABELAS QUE TEM EXATAMENTE AS MESMAS COLUNAS E EU GOSTARIA DE UNIFICAR EM UMA SÓ PODEMOS USAR O 'UNION'

-- Clientes apenas do sexo Masculino
SELECT
	*
FROM
	DimCustomer
WHERE
	Gender = 'M'
UNION
-- Clientes apenas do sexo Feminino
SELECT
	*
FROM
	DimCustomer
WHERE
	Gender = 'F'

-- UNION
-- Usando UNION as tabelas se unirão, porém, as linhas que tem as informaçòes iguais serão exclusas da consulta
SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE
	Gender = 'F'
UNION ALL
SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE
	Gender = 'M'

-- UNION ALL
-- Usando UNION ALL as duas tabelas serão unidas sem ignorar as linhas duplicadas
SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE
	Gender = 'F'
UNION ALL
SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE
	Gender = 'M'
