SELECT * FROM DimProduct

-- AS LINHAS ONDE A MARCA É FABRIKAM
SELECT 
	*
FROM
	DimProduct
WHERE
	BrandName = 'Fabrikam'

-- AS LINHAS ONDE A COR DO PRODUTO SEJAM BLACK
SELECT *
FROM
	DimProduct
WHERE
	ColorName = 'Black'