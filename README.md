# SQL | CONOTOSO DATABASE
Resolvendo problemas do Banco de dados CONTOSO

# NIVEL 01.
## USANDO ORDER BY
#### PROBLEMA 001. 
ᴠᴏᴄᴇ ᴇ ᴏ ɢᴇʀᴇɴᴛᴇ ᴅᴀ ᴀ́ʀᴇᴀ ᴅᴇ ᴄᴏᴍᴘʀᴀs ᴇ ᴘʀᴇᴄɪsᴀ ᴄʀɪᴀʀ ᴜᴍ ʀᴇʟᴀᴛᴏ́ʀɪᴏ ᴄᴏᴍ ᴀs ᴛᴏᴘ 100 ᴠᴇɴᴅᴀs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴀ ᴏ̨ᴜᴀɴᴛɪᴅᴀᴅᴇ ᴠᴇɴᴅɪᴅᴀ.
ᴠᴏᴄᴇ ᴘʀᴇᴄɪsᴀ ғᴀᴢᴇʀ ɪssᴏ ᴇᴍ 10 ᴍɪɴ ᴘᴏɪs ᴏ ᴅɪʀᴇᴛᴏʀ ᴅᴇ ᴄᴏᴍᴘʀᴀs sᴏʟɪᴄɪᴛᴏᴜ ᴇssᴀ ɪɴғᴏʀᴍᴀᴄ̧ᴀo ᴘᴀʀᴀ ᴀᴘʀᴇsᴇɴᴛᴀʀ ᴇᴍ ᴜᴍᴀ ʀᴇᴜɴɪᴀᴏ.
ᴜᴛɪʟɪᴢᴇ sᴇᴜ ᴄᴏɴʜᴇᴄɪᴍᴇɴᴛᴏ ᴇᴍ sᴏ̨ʟ ᴘᴀʀᴀ ʙᴜsᴄᴀʀ ᴇssᴀs ᴛᴏᴘ 100 ᴠᴇɴᴅᴀs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴏ ᴛᴏᴛᴀʟ ᴠᴇɴᴅɪᴅᴏ | sᴀʟᴇsᴀᴍᴏᴜɴᴛ.

``` sql

SELECT TOP (100) *
FROM FactSales
ORDER BY SalesQuantity DESC
```

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
#### PROBLEMA 003. 
Você é responsável pelo setor de logística da empresa Contoso e precisa dimensionar o transporte de todos os produtos em categorias, de acordo com o peso. 
Os produtos da categoria A, com peso acima de 100kg, deverão ser transportados na primeira leva. 
Faça uma consulta no banco de dados para descobrir quais são estes produtos que estão na categoria A.

a) Você deverá retornar apenas 2 colunas nessa consulta: Nome do Produto e Peso. 

b) Renomeie essas colunas com nomes mais intuitivos.

c) Ordene esses produtos do mais pesado para o mais leve.

```sql
SELECT 
	ProductName as 'Nome do Produto',
	Weight as 'Peso'
FROM DimProduct
WHERE WEIGHT >= 100
ORDER BY WEIGHT DESC
```

#### PROBLEMA 004. 
#### PROBLEMA 003. 
```sql
-- A. Quantas lojas a empresa tem no total, 
SELECT  
	*
FROM 
	DimStore
-- A. Retonar as colunas StoreName, OpenDate, EmployeeCount da Tabela DimStore
SELECT 
	StoreName,
	OpenDate,
	EmployeeCount
FROM
	DimStore
-- B. Renomear as colunas anteriores
SELECT 
	StoreName as 'Nome da Loja',
	OpenDate as 'Data da Abertura',
	EmployeeCount as 'Qtd Funcionários'
FROM
	DimStore

-- C. Descubrir dessas lokas quantas e quais estão mais ativas
SELECT 
	StoreName as 'Nome da Loja',
	OpenDate as 'Data da Abertura',
	EmployeeCount as 'Qtd Funcionários'
FROM
	DimStore
WHERE
	StoreType = 'Store' AND
	Status = 'On'



