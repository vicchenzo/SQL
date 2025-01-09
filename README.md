# SQL | CONOTOSO DATABASE
Resolvendo problemas do Banco de dados CONTOSO

## Uso de ORDER BY | Using ORDER BY
#### PROBLEMA 001. 

*Você é o gerente da área de compras e precisa criar um relatório com as TOP 100 vendas, de acordo com a quantidade vendida. Você precisa fazer isso em 10min pois o diretor de compras solicitou essa informação para apresentar em uma reunião. Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total vendido (SalesAmount).*
``` sql
SELECT TOP (100) *
FROM FactSales
ORDER BY SalesQuantity DESC
```
-> *Resuming the code identify the most frequently occurring rating for each type of content*



#### PROBLEMA 002. 
*Os TOP 10 produtos com maior UnitPrice possuem exatamente o mesmo preço. Porém, a empresa quer diferenciar esses preços de acordo com o peso (Weight) de cada um. O que você precisará fazer é ordenar esses top 10 produtos, de acordo com a coluna de UnitPrice e, além disso, estabelecer um critério de desempate, para que seja mostrado na ordem, do maior para o menor. Caso ainda assim haja um empate entre 2 ou mais produtos, pense em uma forma de criar um segundo critério de desempate (além do peso).*
```sql
SELECT TOP (10) *
FROM DimProduct
ORDER BY
	UnitPrice DESC,
	Weight DESC,
	AvailableForSaleDate ASC
```
#### PROBLEMA 003. 
*Você é responsável pelo setor de logística da empresa Contoso e precisa dimensionar o transporte de todos os produtos em categorias, de acordo com o peso. 
Os produtos da categoria A, com peso acima de 100kg, deverão ser transportados na primeira leva. 
Faça uma consulta no banco de dados para descobrir quais são estes produtos que estão na categoria A. 

*a) Você deverá retornar apenas 2 colunas nessa consulta: Nome do Produto e Peso. 
b) Renomeie essas colunas com nomes mais intuitivos. 
c) Ordene esses produtos do mais pesado para o mais leve.*

```sql
SELECT 
	ProductName as 'Nome do Produto',
	Weight as 'Peso'
FROM DimProduct
WHERE WEIGHT >= 100
ORDER BY WEIGHT DESC
```
