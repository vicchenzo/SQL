SELECT	TOP(100) * -- Mostra o TOP 100
FROM	FactSales

  -- SOMA DE TOTAL VENDIDO / TOTAL DEVOLVIDO
SELECT
	SUM(SalesQuantity) as 'Total Vendido',
	SUM(ReturnQuantity) as 'Total Devolvido'
FROM FactSales
