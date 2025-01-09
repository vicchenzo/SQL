-- 009. IIF COMPOSTO
-- EXISTEM 3 TIPOS DE ESTOQUE: HIGH, MID, LOW.
-- FAÇA UM SELECT CONTENDO AS COLUNAS DE ProductKey, ProductName, StockTypeName e NomeDoResponsável PELO PRODUTO DE ACORDO COM O TIPO DE ESTOQUE. A REGRA DEVERÁ SER A SEGUINTE:
-- JOÃO É RESPONSÁVEL PELOS PRODUTOS HIGH;
-- MARIA É RESPONSÁVEL PELOS PRODUTOS MID;
-- LUIS É RESPONSÁVEL PELOS PRODUTOS LOW;

SELECT * FROM DimProduct

-- UTILIZANDO IFF
SELECT
	ProductKey,
	ProductName,
	StockTypeName,
	IIF(
		StockTypeName = 'High', 
		'João', 
		IIF(
			StockTypeName = 'Mid', 
			'Maria',
			'Luis')
			) AS 'Responsável'
FROM
	DimProduct

-- UTILIZANDO CASE
SELECT
	ProductKey,
	ProductName,
	StockTypeName,
	CASE
		WHEN StockTypeName = 'high' THEN 'JOÃO'
		WHEN StockTypeName = 'MID' THEN 'MARIA'
		ELSE 'LUIZ'
	END
FROM
	DimProduct
