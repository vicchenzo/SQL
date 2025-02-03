-- 

SELECT * FROM DimProduct

SELECT
	MAX(UnitCost) AS 'Custo Máximo',
	MIN(UnitCost) AS 'Custo Mínimo'
FROM 
	DimProduct

