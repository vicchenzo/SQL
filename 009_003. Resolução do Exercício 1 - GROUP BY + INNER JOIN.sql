-- a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal e vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, em ordem decrescente.*/
SELECT TOP(100) * FROM FactSales
SELECT * FROM DimChannel

SELECT 
	ChannelName AS 'Canal de Venda',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC

-- b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e quantidade total devolvida (Return Quantity) de acordo com o nome das lojas (StoreName).
SELECT TOP(100) * FROM FactSales
SELECT * FROM DimStore

SELECT
	StoreName AS 'Loja',
	SUM(SalesQuantity) AS 'Qtd Vendida',
	SUM(ReturnQuantity) AS 'Qtd Recebida'
FROM
	FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName 
ORDER BY StoreName


-- c) Faça um resumo do valor total vendido (Sales Amount) para cada mês (CalendarMonthLabel) e ano (CalendarYear)

SELECT TOP(100) * FROM FactSales
SELECT * FROM DimDate

SELECT
	CalendarYear AS 'Ano',
	CalendarMonthLabel AS 'Mes',
	SUM(SalesAmount) AS 'Total Vendas'
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY
	CalendarMonthLabel,
	CalendarYear,
	CalendarMonth
ORDER BY CalendarMonth ASC 
	
-- Utilizando em ORDER BY CalendarYear e CalendarMonthLabel não conseguimos organizar de forma crescente os anos e os meses
-- Feito isso visualizamos a Tabela DimDate e vemos a coluna CalendarMonth com ela conseguimos deixar na ordem necessaria, 200501 Janeiro, 200502 Fevereiro(Numero do ano mais o numero do mês 200501)..
-- Quando tentamos executar aparece um erro, o nome da coluna é invalido na clausula Order by porque não está contido na função de agregação
-- Isso significa que tentamos ordenar de acordo com uma coluna que não está fazendo parte do meu agrupamento (ORDER BY), então precisamos incluir a CalendarMonth no meu agrupamento
