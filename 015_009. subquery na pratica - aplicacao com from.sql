-- [SQL Server] [Subqueries e CTE's] Aula 10 de 28: Subquery na prática - Aplicação com o FROM

-- Exemplo: Retornar a quantidade total de produtos da marca Contoso.

SELECT 
	COUNT(*) 
FROM DimProduct
WHERE BrandName = 'Contoso'

-- Utilizando SubQuery
SELECT
	COUNT(*)
FROM 
	(SELECT * FROM DimProduct WHERE BrandName = 'Contoso') AS Tabela -- Quando SubQuery depois do FROM necessário dar nome a ela
