# SQL | ᴄᴏɴᴛᴏsᴏ ᴅᴀᴛᴀʙᴀsᴇ
ᴇxᴇʀᴄɪᴄɪᴏs ᴀʙᴀɪxᴏ ᴘᴏᴅᴇᴍ sᴇʀ ʙᴀɪxᴀᴅᴏ ᴇᴍ ᴘᴅғ ᴘᴇʟᴏ [ʟɪɴᴋ](https://github.com/vicchenzo/SQL/blob/main/007_008.%20Explica%C3%A7%C3%A3o%20dos%20exerc%C3%ADcios.sql)

# ɴɪᴠᴇʟ ʙᴀsɪᴄᴏ.
## ᴜsᴀɴᴅᴏ ᴏʀᴅᴇʀ ʙʏ
#### ᴘʀᴏʙʟᴇᴍᴀ ɪ. 
``` sql
/* ʏᴏᴜ ᴀʀᴇ ᴀ ᴍᴀɴᴀɢᴇʀ sᴀʟᴇs ᴏғ ᴀ ᴄᴏᴍᴘᴀɴʏ ᴀɴᴅ ɴᴇᴇᴅ ᴛᴏ ᴄʀᴇᴀᴛᴇ ᴀ ᴛᴏᴘ 100 ᴏғ sᴀʟᴇs,
ᴀᴄᴄᴏʀᴅɪɴɢ ᴡɪᴛʜ ᴀ sᴀʟᴇs ᴏ̨ᴜᴀɴᴛɪᴛʏ, ʏᴏᴜ ɴᴇᴇᴅ ᴅᴏ ᴛʜɪs ɪɴ ᴛᴇɴ ᴍɪɴᴜᴛᴇs ғᴏʀ sʜᴏᴡɪɴɢ ɪɴ ᴀ ʀᴇᴜɴɪᴏɴ.
ᴜsᴇ ʏᴏᴜʀ ᴋɴᴏᴡʟᴇᴅɢᴇ ɪɴ sᴏ̨ʟ ғᴏʀ ʙʀɪɴɢ ᴛʜɪs ᴛᴏᴘ 100 sᴀʟᴇs, ᴀᴄᴄᴏʀᴅɪɴɢ ᴀᴛ sᴀʟᴇs ᴛᴏᴛᴀʟ | sᴀʟᴇsᴀᴍᴏᴜɴᴛ. */

SELECT TOP (100) *
FROM FactSales
ORDER BY SalesQuantity DESC
```

#### ᴘʀᴏʙʟᴇᴍᴀ ɪɪ. 
```sql

/* ᴛʜᴇ ᴛᴏᴘ ᴛᴇɴ ᴘʀᴏᴅᴜᴄᴛs ᴡɪᴛʜ ᴀ ʜɪɢʜᴇsᴛ ᴜɴɪᴛ ᴘʀɪᴄᴇ ʜᴀᴠᴇ ᴇxᴀᴄᴛʟʏ ᴛʜᴇ sᴀᴍᴇ ᴘʀɪᴄᴇ, ᴀʟᴛʜᴏᴜɢʜ,
ᴛʜᴇ ᴄᴏᴍᴘᴀɴʏ ᴡᴀɴᴛs ᴛᴏ ᴅɪғғᴇʀᴇɴᴛɪᴀᴛᴇ ᴛʜɪs ᴘʀɪᴄᴇs ᴀᴄᴄᴏʀᴅɪɴɢ ᴛᴏ ᴇᴀᴄʜ ᴡᴇɪɢʜᴛ, ᴡᴇ ɴᴇᴇᴅ ᴛᴏ ᴏʀᴅᴇʀ
ᴛʜɪs ᴛᴏᴘ ᴛᴇɴ ᴘʀᴏᴅᴜᴄᴛs, ᴀᴄᴄᴏʀɪᴅɪɴɢ ᴛᴏ ᴛʜᴇ ᴜɴɪᴛ ᴘʀɪᴄᴇ ᴄᴏʟᴜᴍɴ, ғᴜʀᴛʜᴇʀᴍᴏʀᴇ,
ᴇsᴛᴀʙʟɪsʜᴍᴇɴᴛ ᴏғ ᴀ ᴛɪᴇʙʀᴇᴀᴋᴇʀ ᴄʀɪᴛᴇʀɪᴏɴ, sᴏ ᴛʜᴀᴛ ɪᴛ ɪs sʜᴏᴡɴ ɪɴ ᴏʀᴅᴇʀ, 
ғʀᴏᴍ ʟᴀʀɢᴇsᴛ ᴛᴏ sᴍᴀʟʟᴇsᴛ. ɪɴ ᴄᴀsᴇ ᴛʜᴇʀᴇ ɪs sᴛɪʟʟ ᴀ ᴛɪᴇ ʙᴇᴛᴡᴇᴇɴ ᴛʜᴇ ᴛᴡᴏ ᴏʀ ᴍᴏʀᴇ ᴘʀᴏᴅᴜᴄᴛs,
ᴛʜɪɴᴋ ᴏғ ᴀ ᴡᴀʏ ғᴏʀ ᴄʀᴇᴀᴛᴇ ᴀ sᴇᴄᴏɴᴅ ᴄʀɪᴛᴇʀɪᴏɴ ᴏғ ᴀ ᴛɪᴇʙʀᴇᴀᴋ ʙᴇsɪᴅᴇ ᴛʜᴇ ᴡᴇɪɢʜᴛ. */

SELECT TOP (10) *
FROM DimProduct
ORDER BY
	UnitPrice DESC,
	Weight DESC,
	AvailableForSaleDate ASC
```
#### ᴘʀᴏʙʟᴇᴍᴀ ɪɪɪ. 
```sql
/*
ᴠᴏᴄᴇ ᴇ ʀᴇsᴘᴏɴsᴀ́ᴠᴇʟ ᴘᴇʟᴏ sᴇᴛᴏʀ ᴅᴇ ʟᴏɢɪ́sᴛɪᴄᴀ ᴅᴀ ᴇᴍᴘʀᴇsᴀ ᴄᴏɴᴛᴏsᴏ ᴇ ᴘʀᴇᴄɪsᴀ ᴅɪᴍᴇɴsɪᴏɴᴀʀ ᴏ ᴛʀᴀɴsᴘᴏʀᴛᴇ ᴅᴇ
ᴛᴏᴅᴏs ᴏs ᴘʀᴏᴅᴜᴛᴏs ᴇᴍ ᴄᴀᴛᴇɢᴏʀɪᴀs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴏ ᴘᴇsᴏ. ᴏs ᴘʀᴏᴅᴜᴛᴏs ᴅᴀ ᴄᴀᴛᴇɢᴏʀɪᴀ ᴀ,
ᴄᴏᴍ ᴘᴇsᴏ ᴀᴄɪᴍᴀ ᴅᴇ ᴄᴇᴍ ᴋɢ, ᴅᴇᴠᴇʀᴀ̃ᴏ sᴇʀ ᴛʀᴀɴsᴘᴏʀᴛᴀᴅᴏs ɴᴀ ᴘʀɪᴍᴇɪʀᴀ 
ʟᴇᴠᴀ. ғᴀᴄᴀ ᴜᴍᴀ ᴄᴏɴsᴜʟᴛᴀ ɴᴏ ʙᴀɴᴄᴏ ᴅᴇ ᴅᴀᴅᴏs ᴘᴀʀᴀ ᴅᴇsᴄᴏʙʀɪʀ qᴜᴀɪs sᴀ̃ᴏ ᴇsᴛᴇs ᴘʀᴏᴅᴜᴛᴏs qᴜᴇ
 ᴇsᴛᴀᴏ ɴᴀ [ᴄᴀᴛᴇɢᴏʀɪᴀ ᴀ].

ᴀ) ᴠᴏᴄᴇ ᴅᴇᴠᴇʀᴀ ʀᴇᴛᴏʀɴᴀʀ ᴀᴘᴇɴᴀs ᴅᴜᴀs ᴄᴏʟᴜɴᴀs ɴᴇssᴀ ᴄᴏɴsᴜʟᴛᴀ: [ɴᴏᴍᴇ ᴅᴏ ᴘʀᴏᴅᴜᴛᴏ] [ᴘᴇsᴏ]. 

ʙ) ʀᴇɴᴏᴍᴇɪᴇ ᴇssᴀs ᴄᴏʟᴜɴᴀs ᴄᴏᴍ ɴᴏᴍᴇs ᴍᴀɪs ɪɴᴛᴜɪᴛɪᴠᴏs.

ᴄ) ᴏʀᴅᴇɴᴇ ᴇssᴇs ᴘʀᴏᴅᴜᴛᴏs ᴅᴏ ᴍᴀɪs ᴘᴇsᴀᴅᴏ ᴘᴀʀᴀ ᴏ ᴍᴀɪs ʟᴇᴠᴇ.*/

SELECT 
	ProductName as 'Nome do Produto',
	Weight as 'Peso'
FROM DimProduct
WHERE WEIGHT >= 100
ORDER BY WEIGHT DESC
```

#### ᴘʀᴏʙʟᴇᴍᴀ ɪᴠ.
```sql
-- ᴠᴏᴄᴇ ғᴏɪ ᴀʟᴏᴄᴀᴅᴏ ᴘᴀʀᴀ ᴄʀɪᴀʀ ᴜᴍ ʀᴇʟᴀᴛᴏʀɪᴏ ᴅᴀs ʟᴏᴊᴀs ʀᴇɢɪsᴛʀᴀᴅᴀs ᴀᴛᴜᴀʟᴍᴇɴᴛᴇ ɴᴀ ᴄᴏɴᴛᴏsᴏ.

-- A. qᴜᴀɴᴛᴀs ʟᴏᴊᴀs ᴀ ᴇᴍᴘʀᴇsᴀ ᴛᴇᴍ ɴᴏ ᴛᴏᴛᴀʟ 
SELECT  *
FROM DimStore

-- B. ʀᴇᴛᴏɴᴀʀ ᴀs ᴄᴏʟᴜɴᴀs [sᴛᴏʀᴇɴᴀᴍᴇ], [ᴏᴘᴇɴᴅᴀᴛᴇ], [ᴇᴍᴘʟᴏʏᴇᴇᴄᴏᴜɴᴛ] ᴅᴀ ᴛᴀʙᴇʟᴀ [ᴅɪᴍsᴛᴏʀᴇ]
SELECT 
	StoreName,
	OpenDate,
	EmployeeCount
FROM DimStore

-- B. Renomear as colunas anteriores
SELECT 
	StoreName as 'Nome da Loja',
	OpenDate as 'Data da Abertura',
	EmployeeCount as 'Qtd Funcionários'
FROM DimStore

-- C. Descubrir dessas lojas quantas e quais estão mais ativas
SELECT 
	StoreName as 'Nome da Loja',
	OpenDate as 'Data da Abertura',
	EmployeeCount as 'Qtd Funcionários'
FROM DimStore
WHERE
	StoreType = 'Store' AND
	Status = 'On'
```
#### ᴘʀᴏʙʟᴇᴍᴀ ᴠ.

``` sql
/*
ᴏ ɢᴇʀᴇɴᴛᴇ ᴅᴀ ᴀʀᴇᴀ ᴅᴇ ᴄᴏɴᴛʀᴏʟᴇ ᴅᴇ ᴏ̨ᴜᴀʟɪᴅᴀᴅᴇ ɴᴏᴛɪғɪᴄᴏᴜ ᴀ̀ Cᴏɴᴛᴏsᴏ ᴏ̨ᴜᴇ ᴛᴏᴅᴏs ᴏs ᴘʀᴏᴅᴜᴛᴏs Hᴏᴍᴇ 
Tʜᴇᴀᴛᴇʀ ᴅᴀ ᴍᴀʀᴄᴀ Lɪᴛᴡᴀʀᴇ, ᴅɪsᴘᴏɴɪʙɪʟɪᴢᴀᴅᴏs ᴘᴀʀᴀ ᴠᴇɴᴅᴀ ɴᴏ ᴅɪᴀ 15 ᴅᴇ ᴍᴀʀᴄ̧ᴏ ᴅᴇ 2009, ғᴏʀᴀᴍ 
ɪᴅᴇɴᴛɪғɪᴄᴀᴅᴏs ᴄᴏᴍ ᴅᴇғᴇɪᴛᴏs ᴅᴇ ғᴀʙʀɪᴄᴀ.  

ᴏ ᴏ̨ᴜᴇ ᴠᴏᴄᴇ̂ ᴅᴇᴠᴇʀᴀ ғᴀᴢᴇʀ ᴇ ɪᴅᴇɴᴛɪғɪᴄᴀʀ ᴏs ɪᴅ’s ᴅᴇssᴇs ᴘʀᴏᴅᴜᴛᴏs ᴇ ʀᴇᴘᴀssᴀʀ ᴀᴏ ɢᴇʀᴇɴᴛᴇ ᴘᴀʀᴀ ᴏ̨ᴜᴇ ᴇʟᴇ 
ᴘᴏssᴀ ɴᴏᴛɪғɪᴄᴀʀ ᴀs ʟᴏᴊᴀs ᴇ ᴄᴏɴsᴇᴏ̨ᴜᴇɴᴛᴇᴍᴇɴᴛᴇ sᴏʟɪᴄɪᴛᴀʀ ᴀ sᴜsᴘᴇɴsᴀ̃ᴏ ᴅᴀs ᴠᴇɴᴅᴀs ᴅᴇssᴇs ᴘʀᴏᴅᴜᴛᴏs.
*/

SELECT 
	*
FROM
	DimProduct
WHERE
	BrandName = 'Litware' AND
	ProductName like '%Home Theater%' AND
	availableForSaleDate = '20090315'

```
