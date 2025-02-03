-- Função AVG - AVERAGE tira média de valores de uma coluna

SELECT * FROM DimCustomer

SELECT 
	AVG(YearlyIncome) AS 'Média Renda Anual'
FROM 
	DimCustomer