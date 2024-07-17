-- . a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o nome completo do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).

SELECT TOP(100) * FROM FactOnlineSales
SELECT * FROM DimCustomer

SELECT
	DimCustomer.CustomerKey AS 'ID Cliente',
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	SUM(SalesQuantity) AS 'Qtd Vendida'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY DimCustomer.CustomerKey, FirstName, LastName
ORDER BY SUM(SalesQuantity) Desc

-- b) Feito isso, faça um agrupamento de produtos e descubra quais foram os top 10 produtos mais comprados pelo cliente da letra a, considerando o nome do produto.
-- Cliente que fez a maior quantidade de compras ID 7665
SELECT * FROM DimProduct
SELECT TOP(100) * FROM FactOnlineSales 

SELECT TOP(10)
	ProductName AS 'Produto',
	SUM(SalesQuantity) AS 'Qtd Vendida'
FROM
	FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = 7665
GROUP BY ProductName
ORDER BY SUM(SalesQuantity) Desc
