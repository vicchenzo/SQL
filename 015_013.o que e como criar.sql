-- [SQL Server] [Subqueries e CTE's] Aula 14 de 28: CTE - O que é e como criar

-- Exemplo: Crie uma CTE para armazenar o resultado de uma consulta que contenha: ProductKey, ProductName, BrandName, ColorName e UnitPrice, apenas para a marca Contoso.

WITH cte AS (
SELECT 
	ProductKey,
	ProductName,
	BrandName,
	ColorName,
	UnitPrice
FROM DimProduct 
WHERE BrandName = 'Contoso'
)

SELECT
	COUNT(*)
FROM cte
