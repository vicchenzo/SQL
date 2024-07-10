-- Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as 16 opções de cores?
SELECT * FROM DimProduct

SELECT DISTINCT
	ColorName AS 'Cores'
FROM
	DimProduct

-- PARA SABER QUAIS TEMOS
SELECT 
	BrandName AS 'Marca',
	COUNT(DISTINCT ColorName) AS 'Qtd. Cores'
FROM
	DimProduct
GROUP BY
	BrandName

-- QUAIS CORES EU TENHO POR MARCA
SELECT DISTINCT
	ColorName
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
