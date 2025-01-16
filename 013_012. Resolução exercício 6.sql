-- Exercício 6.
-- A. Crie uma View que seja o resultado de um agrupamento da tabela DimProduct. O resultado esperado da consulta deverá ser o total de produtos por marca. Chame essa View de vw_6a

SELECT * FROM DimProduct

GO
CREATE VIEW vw_6a AS
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Qtde'
FROM
	DimProduct
GROUP BY BrandName
GO

-- B. Altere a View criada no exercício anterior, adicionando o peso total por marca. Atenção: sua View final deverá ter então 3 colunas: Nome da Marca, Total de Produtos e Peso Total.
SELECT * FROM DimProduct

GO
ALTER VIEW vw_6a AS
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Qtde',
	SUM(Weight) AS 'Peso'
FROM 
	DimProduct
GROUP BY BrandName
GO

SELECT * FROM vw_6a

-- C. Exclua a View vw_6a
DROP VIEW vw_6a
