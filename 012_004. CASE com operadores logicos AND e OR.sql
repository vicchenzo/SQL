-- CASE/AND e CASE/OR
-- Faça uma consulta à tabela DimProduct, e retorne as colunas ProductName, BrandNmae, ColorName, UnitPrice e uma coluna de preço com desconto.

-- A. CASO O PRODUTO SEJA DA MARCA 'CONTOSO' e da cor 'RED', O DESCONTO DO PRODUTO SERÁ DE 10%. CASO CONTRÁRIO, NÃO TERÁ DESCONTO.
SELECT
	ProductName,
	BrandName,
	ColorName,
	UnitPrice,
	CASE
		WHEN BrandName = 'CONTOSO' AND  ColorName = 'RED' THEN 0.1
		ELSE 0
	END AS 'Desconto'
FROM
	DimProduct

-- B. CASO O PRODUTO SEJA DA MARCA LITWARE OU FABRIKAM, ELE RECEBERÁ UM DESCONTO DE 5%. CASO CONTRÁRIO, NÃO TERÁ NENHUM DESCONTO.
SELECT
	ProductName,
	BrandName,
	ColorName,
	UnitPrice,
	CASE
		WHEN BrandName = 'Litware' OR  BrandName = 'Fabrikam' THEN 0.05
		ELSE 0
	END AS 'Preço com Desconto'
FROM
	DimProduct
