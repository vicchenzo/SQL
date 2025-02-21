-- Exercício 04.
/*
Faça uma query que retorne os clientes que recebem um salário anual acima da média. A sua 
query deve retornar as colunas CustomerKey, FirstName, LastName, EmailAddress e 
YearlyIncome.

Obs: considere apenas os clientes que são 'Pessoas Físicas */

-- Descobrindo a média Salarial de 'Person'
SELECT AVG(YearlyIncome) FROM DimCustomer WHERE CustomerType = 'Person'-- $57.305,78

SELECT 
	CustomerKey,
	FirstName,
	LastName,
	EmailAddress,
	YearlyIncome
FROM
	DimCustomer
WHERE YearlyIncome > ( -- Esse filtro foi feito apenas para a consulta mais interna para descobrir a média
		SELECT AVG(YearlyIncome)
		FROM DimCustomer 
		WHERE CustomerType = 'Person'
	)
AND CustomerType = 'Person'  -- Esse filtro foi para tirar as empresas da lista (Filtro da consulta principal)
