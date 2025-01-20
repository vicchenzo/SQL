-- ᴅᴏ̨ʟ: ɪᴛ's ᴀ sᴜʙʟᴀɴɢᴜᴀɢᴇ ʀᴇsᴘᴏɴsɪʙʟᴇ ғᴏʀ ᴛʜᴇ ʀᴇᴀᴅɪɴɢ, ᴏᴜ ᴏ̨ᴜᴇʀʏ ᴏғ ᴅᴀᴛᴀ ɪɴ ᴀ ᴅᴀᴛᴀʙᴀsᴇ. ɪɴ sᴏ̨ʟ, ᴛʜɪs ɪs ᴄᴏʀʀᴇsᴘᴏɴᴅᴇɴᴛ ᴛᴏ 'sᴇʟᴇᴄᴛ'

SELECT * FROM DimProduct

SELECT TOP (10)
	UnitPrice
FROM DimProduct
ORDER BY UnitPrice DESC

-- QUANTOS PRODUTOS TEM UM PREÇO UNITARIO MAIOR QUE $1000

SELECT
	ProductName AS 'Produto',
	unitprice AS 'Preço'
FROM DimProduct
WHERE UnitPrice >= 1000

-- PARTE II
SELECT * FROM DimStore

-- QUANTIDADE DE FUNCIONÁRIOS
SELECT SUM(EmployeeCount)
FROM DimStore

-- SUBDIVIDIR QUANTOS FUNCIONÁRIOS POR TIPO DE LOJA
SELECT
	StoreType AS 'Loja',
	SUM(EmployeeCount) AS 'Funcionários'
FROM DimStore
GROUP BY StoreType

-- CALCULAR QUAL A MÉDIA DE CUSTO DOS PRODUTOS
SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	AVG(UnitCost) AS 'Média de Custo'
FROM DimProduct
GROUP BY BrandName

-- QUAL MAXIMO DE VALOR DE PREÇO UNITÁRIO[UnitCost] SEGUNDO A COLUNA DE ClassName

SELECT
	ClassName, -- AGRUPAMENTO FEITO POR ClassName
	MAX(UnitPrice) AS 'Máximo Preço' -- CÁLCULO QUE QUEREMOS FAZER É O MÁXIMO UnitPrice
FROM DimProduct
GROUP BY ClassName

-- PARTE III. ORDER BY + WHERE
SELECT * FROM DimProduct

-- AS LINHAS ONDE A MARCA É FABRIKAM
SELECT 	*
FROM DimProduct
WHERE BrandName = 'Fabrikam'

-- AS LINHAS ONDE A COR DO PRODUTO SEJAM BLACK
SELECT *
FROM DimProduct
WHERE ColorName = 'Black'

-- PARTE IV. ORDER BY + HAVING
SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total por Marca' -- QUANDO COLOCAMOS UMA FUNÇÃO DE AGRUPAMENTO JUNTO COM UMA COLUNA COMO NESTE CASO O SQL ESPERA UM GROUP BY CASO NÃO COLOQUEMOS É DADO COMO ERRO
FROM DimProduct
GROUP BY BrandName
HAVING COUNT(BrandName) >= 200
