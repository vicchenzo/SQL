-- 9. Faça um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em consideração em sua análise apenas a marca Contoso e a cor Silver.

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) AS 'Quantidade'
FROM
	DimProductSubcategory
INNER JOIN DimProduct
	ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
WHERE BrandName = 'Contoso' AND ColorName = 'Silver'
GROUP BY ProductSubcategoryName
