-- 2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesQuantity) por produto.
-- A) Descubra qual é a cor de produto que mais é vendida (de acordo com SalesQuantity).
SELECT TOP(100) * FROM FactSales
SELECT * FROM DimProduct

SELECT
	ColorName AS 'Cor',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
ORDER BY SUM(SalesQuantity) DESC

-- B) Quantas cores tiveram uma quantidade vendida acima de 3.000.000.
SELECT
	ColorName AS 'Cor',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
HAVING SUM(SalesQuantity) >= 3000000
ORDER BY SUM(SalesQuantity) DESC
