SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Quantidade'
FROM
	DimProduct
WHERE
	ClassName = 'Economy' -- VAI DESCARTAR TODAS AS LINHAS DA COLUNA ClassName QUE NÃO SEJAM DA CLASSE ECONOMICA Economy
GROUP BY
	BrandName
HAVING --FILTRA A TABELA DEPOIS DE AGRUPADA
	COUNT(BrandName) >= 200
