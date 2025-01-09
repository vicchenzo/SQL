# SQL | CONOTOSO DATABASE
Resolvendo problemas do Banco de dados CONTOSO

## Uso de ORDER BY | Using ORDER BY
#### PROBLEMA 001. 
Você é o gerente da área de compras e precisa criar um relatório com as TOP 100 vendas, de acordo com a quantidade vendida. Você precisa fazer isso em 10min pois o diretor de compras solicitou essa informação para apresentar em uma reunião. 
Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total vendido (SalesAmount).*/
``` sql
SELECT TOP (100) *
FROM FactSales
ORDER BY SalesQuantity DESC
```
-> *Resuming the code identify the most frequently occurring rating for each type of content*



#### PROBLEMA 002. 
Os TOP 10 produtos com maior UnitPrice possuem exatamente o mesmo preço. Porém, a empresa quer diferenciar esses preços de acordo com o peso (Weight) de cada um. O que você precisará fazer é ordenar esses top 10 produtos, de acordo com a coluna de UnitPrice e, além disso, estabelecer um critério de desempate, para que seja mostrado na ordem, do maior para o menor. Caso ainda assim haja um empate entre 2 ou mais produtos, pense em uma forma de criar um segundo critério de desempate (além do peso). 
```sql
SELECT TOP (10) *
FROM DimProduct
ORDER BY
	UnitPrice DESC,
	Weight DESC,
	AvailableForSaleDate ASC
```
