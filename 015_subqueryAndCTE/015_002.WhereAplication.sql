-- [SQL Server] [Subqueries e CTE's] Aula 3
-- Subquery na prática - Aplicação com o Where (Exemplo 1)

-- Para entender a ideia por trás das subqueries, vamos começar fazendo 3 exemplos com a aplicação WHERE.

-- Exemplo 1: Quais produtos da tabela DimProduct possuem custos acima da média?
USE ContosoRetailDW


SELECT AVG(UnitCost) FROM DimProduct     -- 147.6555

-- Fazendo de forma Manual faríamos..
SELECT
	*
FROM
	DimProduct
WHERE UnitCost >= 147.6555

-- Porém caso entre um novo produto esse valor seria alterado, por tanto, usamos a Subquery para automatizar essa questão.
SELECT
	*
FROM
	DimProduct
WHERE UnitCost >= (SELECT AVG(UnitCost) FROM DimProduct)
