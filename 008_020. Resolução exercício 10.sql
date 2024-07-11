-- 010 A tabela abaixo é resultado de um Join entre a tabela FactSales e as tabelas: DimChannel, DimStore e DimProduct.
-- Recrie esta consulta e classifique em ordem decrescente de acordo com SalesAmount

SELECT TOP(100) * FROM FactSales
SELECT * FROM DimChannel

SELECT TOP(100) * FROM FactSales
SELECT * FROM DimStore

SELECT TOP(100) * FROM FactSales
SELECT * FROM DimProduct

SELECT TOP(100)
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM
	FactSales -- A partir daqui fazemos um JOIN para cada um desses elementos
INNER JOIN DimChannel -- Extraimos informação daqui para FactSales
	ON FactSales.ChannelKey = DimChannel.ChannelKey -- A esquerda (Chave estrangeira) a direita (Chave Primaria)
INNER JOIN DimStore
	On FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct -- Pegamos uma informação da tabela de produtos e vamos jogar na tabela de vendas
	ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY
	SalesAmount DESC
