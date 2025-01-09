# SQL | CONOTOSO DATABASE
Resolvendo problemas do Banco de dados CONTOSO

## Uso de ORDER BY | Using ORDER BY
#### 001. Você é o gerente da área de compras e precisa criar um relatório com as TOP 100 vendas, de acordo com a quantidade vendida. Você precisa fazer isso em 10min pois o diretor de compras solicitou essa informação para apresentar em uma reunião. 
#### Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total vendido (SalesAmount).*/
``` sql
USE ContosoRetailDW

SELECT TOP (100) *
FROM FactSales
ORDER BY SalesQuantity DESC
```
-> *Resuming the code identify the most frequently occurring rating for each type of content*



#### 002. QUANTOS PRODUTOS TEM O PREÇO UNITÁRIO > $1000
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
