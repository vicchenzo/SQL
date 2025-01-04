# SQL | CONOTOSO DATABASE
Using Contoso Database for researchers and studying.

## Uso de ORDER BY | Using ORDER BY
#### 001. Selecionar TOP10 Produtos Ordenado pela coluna de PreçoUnitário
#### 001. Selecting TOP10 products by the Order by UnitPrice column
``` sql
SELECT TOP (10)
	UnitPrice
FROM 
	DimProduct
ORDER BY
	UnitPrice DESC
```
```sql
-- QUANTOS PRODUTOS TEM UM PREÇO UNITARIO MAIOR QUE $1000

SELECT
	ProductName AS 'Produto',
	unitprice AS 'Preço'
FROM
	DimProduct
WHERE
	UnitPrice >= 1000
```
