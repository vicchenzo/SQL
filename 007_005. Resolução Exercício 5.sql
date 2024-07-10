-- A. Você deverá descobrir o peso total para cada tipo de produto (StockTypeName). 
SELECT * FROM DimProduct

SELECT
	StockTypeName AS 'Tipo de Estoque',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY	StockTypeName

-- B. A tabela final deve considerar apenas a marca ‘Contoso’ e ter os seus valores classificados em ordem decrescente. 
SELECT
	StockTypeName AS 'Tipo de Estoque',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
GROUP BY	StockTypeName
ORDER BY	SUM(Weight) DESC
