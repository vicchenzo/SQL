-- 008 A tabela abaixo mostra a combinação entre Marca e Canal de Venda, para as marcas Contoso, Fabrikam e Litware. 
-- Crie um código SQL para chegar no mesmo resultado.

SELECT * FROM DimProduct
SELECT * FROM DimChannel

SELECT
	DISTINCT BrandName,
	ChannelName
FROM
	DimProduct CROSS JOIN DimChannel
WHERE
	BrandName IN (
	'Contoso',
	'Fabrikam',
	'Litware'
)
