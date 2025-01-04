# SQL | CONOTOSO DATABASE
Using Contoso Database for researchers and studying.

## Uso de ORDER BY no DATABASE CONTOSO
``` sql
SELECT * FROM DimProduct

SELECT TOP (10)
	UnitPrice
FROM 
	DimProduct
ORDER BY
	UnitPrice DESC

-- QUANTOS PRODUTOS TEM UM PREÇO UNITARIO MAIOR QUE $1000

SELECT
	ProductName AS 'Produto',
	unitprice AS 'Preço'
FROM
	DimProduct
WHERE
	UnitPrice >= 1000
