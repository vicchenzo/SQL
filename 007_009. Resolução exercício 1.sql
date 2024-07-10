SELECT TOP(100) * FROM FactSales

-- A. Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).
SELECT
	channelKey AS 'Canal de venda',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
GROUP BY
	channelKey

-- B. Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey). 
SELECT
	StoreKey AS 'ID Loja',
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM
	FactSales
GROUP BY
	StoreKey

-- C. Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.

SELECT
	ChannelKey AS 'Canal de venda',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
WHERE
	DateKey BETWEEN '20070101' AND '20071231'
GROUP BY
	channelKey

-- NESTE CASO FIZEMOS O FILTRO ANTES DE AGRUPAR, POIS, QUEREMOS APENAS O ANO DE 2007, NÃO PODEMOS FAZER ESSE FILTRO COM O HAVING POIS PRECISAMOS USAR O FILTRO ANTES DE AGRUPARMOS	
