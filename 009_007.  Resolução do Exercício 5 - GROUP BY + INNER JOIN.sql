-- 5. Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o sexo dos clientes.

SELECT TOP(100) * FROM FactOnlineSales
SELECT * FROM DimCustomer

SELECT 
	Gender AS 'Sexo',
	SUM(SalesQuantity) AS 'Vendas'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE Gender IS NOT NULL -- Considerar apenas valores que não são Nulos
GROUP BY Gender
ORDER BY SUM(SalesQuantity) Desc
