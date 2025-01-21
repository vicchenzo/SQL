-- [SQL Server] [Subqueries e CTE's] Aula 9 de 28: Subquery na prática - Aplicação com o SELECT

-- Exemplo: Retornar uma tabela com todos os produtos (ID Produto e Nome Produto) e também o total de vendas para cada produto

-- Será trazida a contagem considerando que o ProductKey da FactSales seja igual ProductKey da DimProduct
-- Para cada um dos produtos [ProductKey] qual foi a quantidade de vendas para cada um deles;
-- Sendo considerado que o Produto da FactSales tem que ser igual Produto da DimProduct
SELECT
	ProductKey,
	ProductName,
	(SELECT COUNT(ProductKey) FROM FactSales WHERE FactSales.ProductKey = DimProduct.ProductKey ) AS 'Qtd. Vendas'
FROM
	DimProduct

