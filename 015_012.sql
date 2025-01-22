-- [SQL Server] [Subqueries e CTE's] Aula 13 de 28: Subquery aninhada

-- Exemplo: Descubra os nomes dos clientes que ganham o segundo maior salário.

SELECT * FROM DimCustomer
WHERE CustomerType = 'Person'
ORDER BY YearlyIncome DESC

SELECT DISTINCT TOP(2) YearlyIncome FROM DimCustomer
WHERE CustomerType = 'Person'
ORDER BY YearlyIncome DESC

SELECT
	CustomerKey,
	FirstName,
	LastName,
	YearlyIncome
FROM DimCustomer
WHERE YearlyIncome = 160000


--1. Descobrir o maior salário
--2. Descobrir o segundo maior salário
--3. Descobrir os nomes dos clientes que ganham o segundo maior salário



SELECT
	CustomerKey,
	FirstName,
	LastName,
	YearlyIncome
FROM DimCustomer
WHERE YearlyIncome = (
	SELECT
		MAX(YearlyIncome) -- SELECIONA MAIOR RENDA ANUAL
	FROM DimCustomer
	WHERE
		YearlyIncome < ( -- ONDE A 'RENDA ANUAL' SEJA < QUE 'MAIOR RENDA' ANUAL
			SELECT 
				MAX(YearlyIncome) 
			FROM DimCustomer	
			WHERE CustomerType = 'Person'
	)
)
-- A SubQuery MAIS INTERNA VAI RETORNAR O 170,000 [MaiorValor]
-- QUANDO EXECUTAMOS SOMENTE A PRIMEIRA E A SEGUNDA SubQuery SERÁ RETORNADO O SEGUNDO MAIOR VALOR
