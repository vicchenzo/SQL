/*
O setor de controle de produtos quer fazer uma análise para descobrir quais são os produtos 
que possuem um UnitPrice maior que o UnitPrice do produto de ID igual a 1893.

a) A sua consulta resultante deve conter as colunas ProductKey, ProductName e UnitPrice 
da tabela DimProduct.

b) Nessa query você também deve retornar uma coluna extra, que informe o UnitPrice do 
produto 1893.
*/

SELECT * FROM DimProduct WHERE ProductKey = 1893 -- UnitPrice = 1.989,00

SELECT 
	ProductKey,
	ProductName,
	UnitPrice,
	(
		SELECT UnitPrice
		FROM DimProduct 
		WHERE ProductKey = 1893 -- Se o preço desse id mudar, ele mudará automático
		) AS 'UnitPrice (ID 1893)'
FROM DimProduct
WHERE UnitPrice > (
		SELECT UnitPrice
		FROM DimProduct 
		WHERE ProductKey = 1893 --
		)

-- A SubQuery é feita pensando que o preço do id em questão pode ser alterado
