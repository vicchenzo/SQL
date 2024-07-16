-- A. CRIE UM AGRUPAMENTO MOSTRANDO O TOTAL DE VENDAS (SalesQuantity) POR ANO (CalendarYear) TABELA DimDate
-- B. CONSIDERE APENAS O MES (CalendarMonthLabel) de 'January'


SELECT TOP(100) * FROM FactSales
SELECT * FROM DimDate

SELECT
	CalendarYear AS 'ANO',
	SUM(SalesQuantity) AS 'TOTAL VENDIDO'
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
GROUP BY CalendarYear

-- B. CONSIDERE APENAS O MES (CalendarYear) de 'January'
SELECT
	CalendarYear,
	SUM(SalesQuantity)
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
WHERE CalendarMonthLabel = 'January'
GROUP BY CalendarYear

-- C. NA TABELA RESULTANTE, MOSTRE APENAS OS ANOS COM UM TOTAL DE VENDAS MAIOR OU IGUAL A DE 1.2000.000.
SELECT
	CalendarYear,
	SUM(SalesQuantity)
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
WHERE CalendarMonthLabel = 'January'
GROUP BY CalendarYear
HAVING SUM(SalesQuantity) >= 1200000
