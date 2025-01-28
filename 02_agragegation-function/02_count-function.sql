SELECT * FROM DimProduct
  
-- ᴏ̨ᴜᴀɴᴛɪᴛʏ ᴏғ ʟɪɴᴇs ᴏғ ᴛʜᴇ ᴛᴀʙʟᴇ ᴅɪᴍᴘʀᴏᴅᴜᴄᴛ
SELECT
	COUNT(*) AS 'Total de Produtos'
FROM
	DimProduct

-- ᴏ̨ᴜᴀɴᴛɪᴛʏ ᴏғ ʟɪɴᴇs ᴏғ ᴛʜᴇ ᴄᴏʟᴜᴍɴ 'ᴘʀᴏᴅᴜᴄᴛɴᴀᴍᴇ'
SELECT
	COUNT (ProductName) as 'Qtd Produtos'
FROM
	DimProduct

-- ᴄᴏʟᴜᴍɴ ᴄᴏɴᴛᴀɪɴs ᴛʜᴇ ᴠᴀʟᴜᴇs ᴏғ ᴛʜᴇ 'sɪᴢᴇ' ᴄᴏʟᴜᴍɴ ᴏғ ᴛᴀʙʟᴇ 'ᴅɪᴍᴘʀᴏᴅᴜᴄᴛ'
SELECT
	COUNT(Size)
FROM
	DimProduct

-- ᴄᴏʟᴜᴍɴ ᴡɪᴛʜ ᴛʜᴇ ɴᴜʟʟ ᴠᴀʟᴜᴇs ᴏғ ᴛʜᴇ 'sɪᴢᴇ' ᴄᴏʟᴜᴍɴ ᴏғ ᴛᴀʙʟᴇ 'ᴅɪᴍᴘʀᴏᴅᴜᴄᴛ
SELECT
	COUNT(*)
FROM
	DimProduct
WHERE
	Size IS NULL
