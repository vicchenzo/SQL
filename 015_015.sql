-- [SQL Server] [Subqueries e CTE's] Aula 16 de 28: Nomeando colunas de uma CTE

-- Exemplo: Crie uma CTE que seja o resultado do agrupamento de total de produtos por marca. Faça uma média de produtos por marca.

USE ContosoRetailDW

WITH cte(Marca, Total) AS ( -- VÃO SER OS NOMES DAS COLUNAS, BrandName e COUNT(*)
SELECT
	BrandName,
	COUNT(*) -- SEMPRE COLOCAR UM NOME A UMA FUNÇÃO DE AGREGAÇÃO
FROM
	DimProduct
GROUP BY 
	BrandName
)

SELECT 
	Marca,
	Total
FROM 
	cte
