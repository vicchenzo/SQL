-- Exercício 004. 
-- Crie uma View que seja o resultado de um agrupamento da tabela FactSales. Este agrupamento deve considerar o SalesQuantity (Quantidade Total Vendida) por Nome do Produto. Chame esta View de vwTotalVendidoProdutos.
-- OBS: Para isso, você terá que utilizar um JOIN para relacionar as tabelas FactSales e DimProduct.

SELECT TOP(100) * FROM FactSales
SELECT TOP(100) * FROM DimProduct

GO
CREATE VIEW vwTotalVendidoProdutos AS
SELECT
	ProductName AS 'Produto',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
GO

SELECT * FROM vwTotalVendidoProdutos
