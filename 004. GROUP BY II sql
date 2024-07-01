SELECT * FROM DimStore

-- QUANTIDADE DE FUNCIONÁRIOS
SELECT 
	SUM(EmployeeCount)
FROM
	DimStore

-- SUBDIVIDIR QUANTOS FUNCIONÁRIOS POR TIPO DE LOJA

SELECT
	StoreType AS 'Loja',
	SUM(EmployeeCount) AS 'Funcionários'
FROM
	DimStore
GROUP BY
	StoreType

-- CALCULAR QUAL A MÉDIA DE CUSTO DOS PRODUTOS
SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	AVG(UnitCost) AS 'Média de Custo'
FROM 
	DimProduct
GROUP BY
	BrandName

-- QUAL MAXIMO DE VALOR DE PREÇO UNITÁRIO[UnitCost] SEGUNDO A COLUNA DE ClassName

SELECT
	ClassName, -- AGRUPAMENTO FEITO POR ClassName
	MAX(UnitPrice) AS 'Máximo Preço' -- CÁLCULO QUE QUEREMOS FAZER É O MÁXIMO UnitPrice
FROM
	DimProduct
GROUP BY
	ClassName
