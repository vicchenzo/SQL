-- FUNÇÃO IIF: ALTERNATIVA AO CASE
-- EXEMPLO: QUAL A CATEGORIA DE RISCO DO PROJETO ABAIXO DE ACORDO COM A SUA NOTA:
-- RISCO ALTO: Classificação >= 5
-- RISCO BAIXO: Classificação < 5

-- UTILIZANDO CASE
DECLARE @varClassificacao INT = 4

SELECT
	CASE
		WHEN @varClassificacao >= 5 THEN 'RISCO ALTO'
		ELSE 'RISCO BAIXO'
	END

-- UTILIZANDO IFF
DECLARE @varClassificacao INT = 4

SELECT
	IIF(
	@varClassificacao >= 5, 
	'RISCO ALTO',
	'RISCO BAIXO'
	)

-- EXEMPLO 2: Crie uma coluna única de 'Cliente', contendo o nome do Cliente, seja ele uma pessoa ou uma empresa, Traga também a coluna de CustomerKey e CustomerType
SELECT * FROM DimCustomer

SELECT
	CustomerKey,
	CustomerType,
	IIF(
		CustomerType = 'Person',
		Firstname,
		CompanyName) AS 'Cliente'
FROM
	DimCustomer
