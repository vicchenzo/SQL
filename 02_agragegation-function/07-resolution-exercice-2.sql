-- AVALIAR A MÉDIA SALARIAL DE TODOS OS CLIENTES DA OCUPAÇÃO 'Professional'

SELECT * FROM DimCustomer

SELECT 
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE
	Occupation = 'Professional'