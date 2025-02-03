SELECT TOP(100) * FROM FactSales

SELECT 
	SUM(SalesQuantity) AS 'Qtd Vendida',
	SUM(ReturnQuantity) AS 'Qtd Devolvida'
FROM
	FactSales
WHERE
	channelKey = 1

SELECT * FROM DimChannel