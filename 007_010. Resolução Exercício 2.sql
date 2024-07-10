-- Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesAmount) por produto (ProductKey). 
-- a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso, mostrar apenas os produtos que tiveram um resultado final de vendas maior do que $5.000.000.
SELECT
	ProductKey AS 'ID Produto',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
Group By ProductKey
HAVING SUM(SalesAmount) >= 5000000
ORDER BY
	SUM(SalesAmount) DESC
-- b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas. Desconsidere o filtro de $5.000.000 aplicado.
SELECT TOP(10)
	ProductKey AS 'ID Produto',
	SUM(SalesAmount) 'Faturamento Total'
FROM
	FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC
