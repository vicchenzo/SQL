-- Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que subcategorias são essas.

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT 
	ProductName,
	ProductSubcategoryName
FROM
	DimProduct
RIGHT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE
	ProductName IS NULL
