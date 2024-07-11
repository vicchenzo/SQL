-- MULTIPLOS JOINS

-- TABELA DE PRODUTOS
SELECT ProductKey,ProductName,ProductSubcategoryKey -- CHAVE ESTRANGEIRA | A PARTIR DESSA CHAVE SERÁ FEITO O PRIMEIRO JOIN
FROM DimProduct

-- TABELA DE SUBCATEGORIA
SELECT ProductSubcategoryKey,ProductSubcategoryName, ProductCategoryKey -- CHAVE PRIMARIA
FROM DimProductSubcategory

--TABELA DE CATEGORIA
SELECT ProductCategoryKey, ProductCategoryName
FROM DimProductCategory

SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductCategoryName -- A INFORMAÇÃO QUE QUEREMOS MOSTRAR NO FINAL DA NOSSA DA TABELA JUNTANDO A PRIMEIRA COM A TERCEIRA ACIMA.
FROM
	DimProduct --TABELA PRINCIPAL (PARA ONDE VAMOS INSERIR AS INFORMAÇÕES)
INNER JOIN DimProductSubcategory -- ONDE EXTRAIMOS INFORMAÇÕES (QUANDO VAMOS FAZER MAIS DE UM JOIN, ESSA TABELA PASSA A SER A PRINCIPAL E A PRÓXIMA SERÁ A SECUNDÁRIA)
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		INNER JOIN DimProductCategory -- Extraimos dessa tabela para inserir na tabela de cima | DimProductSubcategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
