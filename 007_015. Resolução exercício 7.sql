-- Faça um agrupamento para saber o total de clientes de acordo com o Sexo 
-- Também a média salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus conhecimentos em SQL. 

SELECT * FROM DimCustomer

SELECT
	Gender AS 'Sexo',
	COUNT(*) AS 'Qtd. Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE	GENDER IS NOT NULL
GROUP BY	Gender
