-- sᴏᴍᴇ ᴏғ ᴇxᴀᴍᴘʟᴇ ғʀᴏᴍ ᴛʜᴇ ᴀɢɢʀᴇɢᴀᴛɪᴏɴ ғᴜɴᴄᴛɪᴏɴ 'sᴜᴍ'
-- ʙʀɪɴɢ ᴛʜᴇ ᴛᴏᴘ ʜᴜɴᴅʀᴇᴅ ɪᴛᴇɴs ғʀᴏᴍ ғᴀᴄᴛsᴀʟᴇs ᴛᴀʙʟᴇ
SELECT	TOP(100) *
FROM FactSales

-- ʙʀɪɴɢ ᴛʜᴇ sᴜᴍ ᴏғ sᴀʟᴇsᴏ̨ᴜᴀɴᴛɪᴛʏ ᴀɴᴅ ʀᴇᴛᴜʀɴ ᴏ̨ᴜᴀɴᴛɪᴛʏ ғʀᴏᴍ ᴛʜᴇ ғᴀᴄᴛsᴀʟᴇs ᴛᴀʙʟᴇ
SELECT
	SUM(SalesQuantity) as 'Total Vendido',
	SUM(ReturnQuantity) as 'Total Devolvido'
FROM
	FactSales
