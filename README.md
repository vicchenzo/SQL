# SQL | CONOTOSO DATABASE
Using Contoso Database for researchers and studying.

## Uso de ORDER BY | Using ORDER BY
#### 001. SELECIONAR O TOP10 PRODUTOS PELA COLUNA DE PREÇO UNITÁRIO
#### 001. SELECTING TOP10 PRODUCTS BY THE UNITPRICE COLUMN
``` sql
SELECT TOP (10)
	UnitPrice
FROM 
	DimProduct
ORDER BY
	UnitPrice DESC
```
### Objective: #### 
Identify the most frequently occurring rating for each type of content.
*Objective:* Identify the most frequently occurring rating for each type of content.
**Objective:** Identify the most frequently occurring rating for each type of content.



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
