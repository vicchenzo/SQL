-- A. Faça um agrupamento e descubra a quantidade total de produtos por marca.
SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Qtd. Produtos'
FROM
	DimProduct
GROUP BY	BrandName

-- B. Determine a média do preço unitário (UnitPrice) para cada ClassName. 
SELECT
	ClassName AS 'Classe Produto',
	AVG(UnitPrice) AS 'Média Preço'
FROM
	DimProduct
GROUP BY	ClassName

--C. Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui. 
SELECT
	ColorName AS 'Cores',
	SUM(Weight) AS 'Peso'
FROM
	DimProduct
GROUP BY	ColorName
