# SQL | ᴄᴏɴᴛᴏsᴏ ᴅᴀᴛᴀʙᴀsᴇ
ᴇxᴇʀᴄɪᴄɪᴏs ᴀʙᴀɪxᴏ ᴘᴏᴅᴇ sᴇʀ ʙᴀɪxᴀᴅᴏ ᴇᴍ ᴘᴅғ ᴘᴇʟᴏ ʟɪɴᴋ

# ɴɪᴠᴇʟ ɪ.
## ᴜsᴀɴᴅᴏ ᴏʀᴅᴇʀ ʙʏ
#### ᴘʀᴏʙʟᴇᴍᴀ ɪ. 
``` sql
/* ᴠᴏᴄᴇ ᴇ ᴏ ɢᴇʀᴇɴᴛᴇ ᴅᴀ ᴀʀᴇᴀ ᴅᴇ ᴄᴏᴍᴘʀᴀs ᴇ ᴘʀᴇᴄɪsᴀ ᴄʀɪᴀʀ ᴜᴍ ʀᴇʟᴀᴛᴏʀɪᴏ ᴄᴏᴍ ᴀs ᴛᴏᴘ ᴄᴇᴍ ᴠᴇɴᴅᴀs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴀ qᴜᴀɴᴛɪᴅᴀᴅᴇ ᴠᴇɴᴅɪᴅᴀ.
ᴠᴏᴄᴇ ᴘʀᴇᴄɪsᴀ ғᴀᴢᴇʀ ɪssᴏ ᴇᴍ ᴅᴇᴢ ᴍɪɴ ᴘᴏɪs ᴏ ᴅɪʀᴇᴛᴏʀ ᴅᴇ ᴄᴏᴍᴘʀᴀs sᴏʟɪᴄɪᴛᴏᴜ ᴇssᴀ ɪɴғᴏʀᴍᴀᴄ̧ᴀo ᴘᴀʀᴀ ᴀᴘʀᴇsᴇɴᴛᴀʀ ᴇᴍ ᴜᴍᴀ ʀᴇᴜɴɪᴀᴏ.
ᴜᴛɪʟɪᴢᴇ sᴇᴜ ᴄᴏɴʜᴇᴄɪᴍᴇɴᴛᴏ ᴇᴍ sqʟ ᴘᴀʀᴀ ʙᴜsᴄᴀʀ ᴇssᴀs ᴛᴏᴘ ᴄᴇᴍ ᴠᴇɴᴅᴀs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴏ ᴛᴏᴛᴀʟ ᴠᴇɴᴅɪᴅᴏ | sᴀʟᴇsᴀᴍᴏᴜɴᴛ. */

SELECT TOP (100) *
FROM FactSales
ORDER BY SalesQuantity DESC
```

#### ᴘʀᴏʙʟᴇᴍᴀ ɪɪ. 
```sql

/* ᴏs ᴛᴏᴘ ᴅᴇᴢ ᴘʀᴏᴅᴜᴛᴏs ᴄᴏᴍ ᴍᴀɪᴏʀ [ᴜɴɪᴛᴘʀɪᴄᴇ] ᴘᴏssᴜᴇᴍ ᴇxᴀᴛᴀᴍᴇɴᴛᴇ ᴏ ᴍᴇsᴍᴏ ᴘʀᴇᴄ̧ᴏ. ᴘᴏʀᴇ́ᴍ,
ᴀ ᴇᴍᴘʀᴇsᴀ qᴜᴇʀ ᴅɪғᴇʀᴇɴᴄɪᴀʀ ᴇssᴇs ᴘʀᴇᴄ̧ᴏs ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴏ ᴘᴇsᴏ [ᴡᴇɪɢʜᴛ] ᴅᴇ ᴄᴀᴅᴀ ᴜᴍ. 
ᴘʀᴇᴄɪsᴏ ᴏʀᴅᴇɴᴀʀ ᴇssᴇs ᴛᴏᴘ ᴅᴇᴢ ᴘʀᴏᴅᴜᴛᴏs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴀ ᴄᴏʟᴜɴᴀ ᴅᴇ ᴜɴɪᴛᴘʀɪᴄᴇ ᴇ, ᴀʟᴇ́ᴍ ᴅɪssᴏ,
ᴇsᴛᴀʙᴇʟᴇᴄᴇʀ ᴜᴍ ᴄʀɪᴛᴇ́ʀɪᴏ ᴅᴇ ᴅᴇsᴇᴍᴘᴀᴛᴇ, ᴘᴀʀᴀ qᴜᴇ sᴇᴊᴀ ᴍᴏsᴛʀᴀᴅᴏ ɴᴀ ᴏʀᴅᴇᴍ, 
ᴅᴏ ᴍᴀɪᴏʀ ᴘᴀʀᴀ ᴏ ᴍᴇɴᴏʀ. ᴄᴀsᴏ ᴀɪɴᴅᴀ ᴀssɪᴍ ʜᴀᴊᴀ ᴜᴍ ᴇᴍᴘᴀᴛᴇ ᴇɴᴛʀᴇ ᴅᴏɪs ᴏᴜ ᴍᴀɪs ᴘʀᴏᴅᴜᴛᴏs,
ᴘᴇɴsᴇ ᴇᴍ ᴜᴍᴀ ғᴏʀᴍᴀ ᴅᴇ ᴄʀɪᴀʀ ᴜᴍ sᴇɢᴜɴᴅᴏ ᴄʀɪᴛᴇ́ʀɪᴏ ᴅᴇ ᴅᴇsᴇᴍᴘᴀᴛᴇ [ᴀʟᴇᴍ ᴅᴏ ᴘᴇsᴏ]. */

SELECT TOP (10) *
FROM DimProduct
ORDER BY
	UnitPrice DESC,
	Weight DESC,
	AvailableForSaleDate ASC
```
#### ᴘʀᴏʙʟᴇᴍᴀ ɪɪɪ. 
ᴠᴏᴄᴇ ᴇ ʀᴇsᴘᴏɴsᴀ́ᴠᴇʟ ᴘᴇʟᴏ sᴇᴛᴏʀ ᴅᴇ ʟᴏɢɪ́sᴛɪᴄᴀ ᴅᴀ ᴇᴍᴘʀᴇsᴀ Cᴏɴᴛᴏsᴏ ᴇ ᴘʀᴇᴄɪsᴀ ᴅɪᴍᴇɴsɪᴏɴᴀʀ ᴏ ᴛʀᴀɴsᴘᴏʀᴛᴇ ᴅᴇ ᴛᴏᴅᴏs ᴏs ᴘʀᴏᴅᴜᴛᴏs ᴇᴍ ᴄᴀᴛᴇɢᴏʀɪᴀs, ᴅᴇ ᴀᴄᴏʀᴅᴏ ᴄᴏᴍ ᴏ ᴘᴇsᴏ. ᴏs ᴘʀᴏᴅᴜᴛᴏs ᴅᴀ ᴄᴀᴛᴇɢᴏʀɪᴀ A, ᴄᴏᴍ ᴘᴇsᴏ ᴀᴄɪᴍᴀ ᴅᴇ ᴄᴇᴍ ᴋɢ, ᴅᴇᴠᴇʀᴀ̃ᴏ sᴇʀ ᴛʀᴀɴsᴘᴏʀᴛᴀᴅᴏs ɴᴀ ᴘʀɪᴍᴇɪʀᴀ 
ʟᴇᴠᴀ. ғᴀᴄᴀ ᴜᴍᴀ ᴄᴏɴsᴜʟᴛᴀ ɴᴏ ʙᴀɴᴄᴏ ᴅᴇ ᴅᴀᴅᴏs ᴘᴀʀᴀ ᴅᴇsᴄᴏʙʀɪʀ qᴜᴀɪs sᴀ̃ᴏ ᴇsᴛᴇs ᴘʀᴏᴅᴜᴛᴏs qᴜᴇ ᴇsᴛᴀᴏ ɴᴀ [ᴄᴀᴛᴇɢᴏʀɪᴀ ᴀ].

ᴀ) ᴠᴏᴄᴇ ᴅᴇᴠᴇʀᴀ ʀᴇᴛᴏʀɴᴀʀ ᴀᴘᴇɴᴀs ᴅᴜᴀs ᴄᴏʟᴜɴᴀs ɴᴇssᴀ ᴄᴏɴsᴜʟᴛᴀ: [ɴᴏᴍᴇ ᴅᴏ ᴘʀᴏᴅᴜᴛᴏ] [ᴘᴇsᴏ]. 

ʙ) ʀᴇɴᴏᴍᴇɪᴇ ᴇssᴀs ᴄᴏʟᴜɴᴀs ᴄᴏᴍ ɴᴏᴍᴇs ᴍᴀɪs ɪɴᴛᴜɪᴛɪᴠᴏs.

ᴄ) ᴏʀᴅᴇɴᴇ ᴇssᴇs ᴘʀᴏᴅᴜᴛᴏs ᴅᴏ ᴍᴀɪs ᴘᴇsᴀᴅᴏ ᴘᴀʀᴀ ᴏ ᴍᴀɪs ʟᴇᴠᴇ.
```sql

SELECT 
	ProductName as 'Nome do Produto',
	Weight as 'Peso'
FROM DimProduct
WHERE WEIGHT >= 100
ORDER BY WEIGHT DESC
```

#### ᴘʀᴏʙʟᴇᴍᴀ ɪᴠ.
ᴠᴏᴄᴇ ғᴏɪ ᴀʟᴏᴄᴀᴅᴏ ᴘᴀʀᴀ ᴄʀɪᴀʀ ᴜᴍ ʀᴇʟᴀᴛᴏʀɪᴏ ᴅᴀs ʟᴏᴊᴀs ʀᴇɢɪsᴛʀᴀᴅᴀs ᴀᴛᴜᴀʟᴍᴇɴᴛᴇ ɴᴀ ᴄᴏɴᴛᴏsᴏ.
```sql
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



