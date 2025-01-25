-- [SQL Server] [Subqueries e CTE's] Aula 15 de 28: Calculando agregações com CTE

-- Exemplo: Crie uma CTE que seja o resultado do agrupamento de total de produtos por marca. Faça uma média de produtos por marca.

WITH cte AS (
SELECT
	BrandName,
	COUNT(*) AS 'Total'
FROM
	DimProduct
GROUP BY
	BrandName
)

SELECT 
	AVG(Total)
FROM cte
