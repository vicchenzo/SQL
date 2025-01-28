SELECT * FROM DimProduct

-- ʜᴏᴡ ᴍᴜᴄʜ ᴅɪsᴛɪɴᴄᴛ ᴄᴏʟᴏʀs ᴡᴇ ʜᴀᴠᴇ
SELECT
	COUNT(DISTINCT ColorName) AS 'Cores Distintas'
From
	DimProduct

-- ʜᴏᴡ ᴍᴜᴄʜ ʙʀᴀɴᴅ ɴᴀᴍᴇs ᴡᴇ ʜᴀᴠᴇ
SELECT
	COUNT(DISTINCT BrandName) AS 'Marcas Distintas'
From
	DimProduct

SELECT 
    BrandName,  -- column who identifies brand name (ᴄᴀɴ ʙᴇ 'ʙʀᴀɴᴅ_ɪᴅ' ɪғ ᴜ ᴘʀᴇғᴇʀ)
    COUNT(DISTINCT ColorName) AS TotalColors  -- ᴄᴏᴜɴᴛs ᴛʜᴇ ɴᴜᴍʙᴇʀ ᴏғ ᴛʜᴇ ᴅɪsᴛɪɴᴄᴛ ᴄᴏʟᴏʀs ʙʏ ʙʀᴀɴᴅ ɴᴀᴍᴇ 
FROM DimProduct
GROUP BY BrandName  -- ᴀɢʀᴏᴜᴘs ᴛʜᴇ ɪɴғᴏʀᴍᴀᴛɪᴏɴ ʙʏ ᴛʜᴇ ʙʀᴀɴᴅ ɴᴀᴍᴇ
ORDER BY COUNT(DISTINCT ColorName) DESC
