-- Exercicio 1
-- Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela DimProductSubcategory para a tabela DimProduct

SELECT TOP(100) * FROM DimProduct
SELECT TOP(100) * FROM DimProductSubcategory

SELECT
	productKey AS 'ID Produto',
	ProductName AS 'Produto',
	ProductSubcategoryName AS 'SubCategoria'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
