-- Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer esse agrupamento

SELECT * FROM DimCustomer

SELECT
	Education AS 'Nível Escolar',
	COUNT(Education) AS 'Qtd. Cliente',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE
	Education IS NOT  NULL
GROUP BY
	Education
ORDER BY
	AVG(YearlyIncome) DESC
