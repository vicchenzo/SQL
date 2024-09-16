-- 5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para uma subcategoria específica: ‘Lamps’.
-- Utilize o conceito de variáveis para chegar neste resultado.

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory


-- Primeiro passo é criar a variável que o professor que seria que é o que buscamos no filtro:

DECLARE @varNomeSubcategoria VARCHAR(30) = 'LAMPS'

DECLARE @varIdSubcategoria INT = (
	SELECT 
		ProductSubcategoryKey 
	FROM 
		DimProductSubcategory 
	WHERE ProductSubcategoryName = @varNomeSubcategoria)

SELECT 
	productName,
	productSubcategoryKey
FROM
	DimProduct
WHERE	
	ProductSubcategoryKey = @varIdSubcategoria  --A CHAVE DA SUBCATEGORIA PARA O LAMPS É 46
	
-- A linha não traz diretamente o nome da subcategoria, ela apenas traz os nomes dos produtos
-- que têm um ProductSubcategoryKey igual ao valor armazenado na variável @varIdSubcategoria. 
