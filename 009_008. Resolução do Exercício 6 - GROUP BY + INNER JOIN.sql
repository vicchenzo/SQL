-- 8. Faça uma tabela resumo mostrando o resultado do planejamento estratégico por ano.

SELECT TOP(100) * FROM FactStrategyPlan
SELECT * FROM DimDate

SELECT
	CalendarYear AS 'Ano',
	SUM(Amount) AS 'Total'
FROM
	FactStrategyPlan
INNER JOIN DimDate
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYear
