-- [SQL Server] [Subqueries e CTE's] Aula 4 de 28: Subquery na prática - Aplicação com o Where (Exemplo 2)

-- Para entender a ideia por trás das subqueries, vamos começar fazendo 3 exemplos com a aplicação WHERE.

-- Exemplo 2: Faça uma consulta para retornar os produtos da categoria 'Televisions'. Tome cuidado pois não temos a informação de Nome da Subcategoria na tabela DimProduct. Dessa forma, precisaremos criar um SELECT que descubra o ID da categoria 'Televisions' e passar esse resultado como o valor que queremos filtrar dentro do WHERE.
USE ContosoRetailDW

SELECT * FROM DimProduct
WHERE ProductSubcategoryKey = 
	(SELECT ProductSubcategoryKey FROM DimProductSubcategory
		WHERE ProductSubcategoryName = 'Televisions')

-- O SELECT abaixo é o mesmo colocado dentro do where, serve apenas para nos dizer qual id da subcategoria é o de TELEVISIONS
SELECT 
	ProductSubcategoryKey
FROM 
	DimProductSubcategory
WHERE 
	ProductSubcategoryName = 'Televisions'

-- Poderiamos também resolver fazendo uso de JOINS
SELECT 
	ProductName,
	ProductSubcategoryName
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE ProductSubcategoryName = 'Televisions'


