-- Exercício 2
-- Identifique uma coluna em comum entre as tabelas DimProductSubcategory e DimProductCategory. 
-- Utilize essa coluna para complementar informações na tabela DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN

SELECT TOP(100) * FROM DimProductSubcategory
SELECT TOP(100) * FROM DimProductCategory

SELECT
	ProductSubcategoryKey AS 'ID Subcategoria',
	ProductSubcategoryname AS 'Subcategoria',
	ProductCategoryName AS 'Categoria' 
FROM
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
