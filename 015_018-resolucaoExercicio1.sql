/*
ᴘᴀʀᴀ ғɪɴs ғɪsᴄᴀɪs, ᴀ ᴄᴏɴᴛᴀʙɪʟɪᴅᴀᴅᴇ ᴅᴀ ᴇᴍᴘʀᴇsᴀ ᴘʀᴇᴄɪsᴀ ᴅᴇ ᴜᴍᴀ ᴛᴀʙᴇʟᴀ ᴄᴏɴᴛᴇɴᴅᴏ ᴛᴏᴅᴀs ᴀs ᴠᴇɴᴅᴀs 
ʀᴇғᴇʀᴇɴᴛᴇs ᴀ ʟᴏᴊᴀ ‘ᴄᴏɴᴛᴏsᴏ ᴏʀʟᴀɴᴅᴏ sᴛᴏʀᴇ’. ɪssᴏ ᴘᴏʀᴏ̨ᴜᴇ ᴇssᴀ ʟᴏᴊᴀ ᴇɴᴄᴏɴᴛʀᴀ-sᴇ ᴇᴍ ᴜᴍᴀ ʀᴇɢɪᴀ̃ᴏ ᴏɴᴅᴇ 
ᴀ ᴛʀɪʙᴜᴛᴀᴄ̧ᴀᴏ ғᴏɪ ᴍᴏᴅɪғɪᴄᴀᴅᴀ ʀᴇᴄᴇɴᴛᴇ.

ᴘᴏʀᴛᴀɴᴛᴏ, ᴄʀɪᴇ ᴜᴍᴀ ᴄᴏɴsᴜʟᴛᴀ ᴀᴏ ʙᴀɴᴄᴏ ᴅᴇ ᴅᴀᴅᴏs ᴘᴀʀᴀ ᴏʙᴛᴇʀ ᴜᴍᴀ ᴛᴀʙᴇʟᴀ ғᴀᴄᴛsᴀʟᴇs ᴄᴏɴᴛᴇɴᴅᴏ ᴛᴏᴅᴀs ᴀs ᴠᴇɴᴅᴀs ᴅᴇsᴛᴀ ʟᴏᴊᴀ
*/

SELECT * FROM FactSales
WHERE StoreKey = (
	SELECT StoreKey FROM DimStore 
	WHERE StoreName = 'Contoso Orlando Store') -- StoreKey: 110
