-- Exercício 001.
--O setor de vendas decidiu aplicar um desconto aos produtos de acordo com a sua classe. O percentual aplicado deverá ser de:
-- Economy -> 5%
-- Regular -> 7%
-- Deluxe -> 9%

SELECT * FROM DimProduct

-- a) Faça uma consulta à tabela DimProduct que retorne as seguintes colunas: ProductKey, ProductName, e outras duas colunas que deverão retornar o % de Desconto e UnitPrice com desconto.

SELECT
	Productkey AS 'ID Produto',
	ProductName AS 'Produto',
	ClassName AS 'Classe',
	UnitPrice AS 'Preço',
	CASE
		WHEN ClassName = 'DELUXE' THEN 0.09 
		WHEN ClassName = 'REGULAR' THEN 0.07
		ELSE 0.05
	END  AS '% Desconto'
FROM
	DimProduct


SELECT
	Productkey AS 'ID Produto',
	ProductName AS 'Produto',
	ClassName AS 'Classe',
	UnitPrice AS 'Preço',
	CASE
		WHEN ClassName = 'DELUXE' THEN ROUND((1 - 0.09) * UnitPrice, 2)
		WHEN ClassName = 'REGULAR' THEN ROUND((1 - 0.07) * UnitPrice, 2)
		ELSE ROUND((1 - 0.05) * UnitPrice, 2)
	END  AS 'Valor c/ desconto'
FROM
	DimProduct

-- b) Faça uma adaptação no código para que os % de desconto de 5%, 7% e 9% sejam facilmente modificados (dica: utilize variáveis).

DECLARE @varDeluxe FLOAT = 0.09
DECLARE @varRegular FLOAT = 0.07
DECLARE @varEconomy FLOAT = 0.05

SELECT
	Productkey AS 'ID Produto',
	ProductName AS 'Produto',
	ClassName AS 'Classe',
	UnitPrice AS 'Preço',
	CASE
		WHEN ClassName = 'DELUXE' THEN ROUND((1 - @varDeluxe) * UnitPrice, 2)
		WHEN ClassName = 'REGULAR' THEN ROUND((1 - @varRegular) * UnitPrice, 2)
		ELSE ROUND((1 - @varEconomy) * UnitPrice, 2)
	END  AS 'Valor com Desconto'
FROM
	DimProduct
