/* 
1. Para fins fiscais, a contabilidade da empresa precisa de uma tabela contendo todas as vendas 
referentes à loja ‘Contoso Orlando Store’. Isso porque essa loja encontra-se em uma região onde 
a tributação foi modificada recente.

Portanto, crie uma consulta ao Banco de Dados para obter uma tabela FactSales contendo todas 
as vendas desta loja
*/

SELECT * FROM FactSales
WHERE StoreKey = (
	SELECT StoreKey FROM DimStore 
	WHERE StoreName = 'Contoso Orlando Store') -- StoreKey: 110