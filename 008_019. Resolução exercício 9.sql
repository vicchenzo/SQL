/* 009 Neste exercício, você deverá relacionar as tabelas FactOnlineSales com DimPromotion. 
Identifique a coluna que as duas tabelas têm em comum e utilize-a para criar esse relacionamento.
Retorne uma tabela contendo as seguintes colunas:
	OnlineSalesKey
	DateKey
	PromotionName
	SalesAmount
A sua consulta deve considerar apenas as linhas de vendas referentes a produtos com 
desconto (PromotionName <> ‘No Discount’). Além disso, você deverá ordenar essa tabela de 
acordo com a coluna DateKey, em ordem crescente*/

SELECT TOP(100) * FROM FactOnlineSales
SELECT * FROM DimPromotion

SELECT 
	OnlineSalesKey,
	DateKey,
	PromotionName,
	SalesAmount
FROM
	FactOnlineSales
INNER JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE
	PromotionName <> 'No Discount'
ORDER BY
	DateKey ASC
