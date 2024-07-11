-- EXERCÍCIO 4
-- Complementa a tabela DimProduct com a informação de ProductCategoryDescription. 
-- Utilize o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory


SELECT
	ProductKey,
	ProductName,
	ProductDescription
FROM
	DimProduct 
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		LEFT JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
