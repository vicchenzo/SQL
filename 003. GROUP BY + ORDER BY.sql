SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount) AS 'Quantidade'
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY -- DESSA FORMA ESTÁ SENDO ORDENADO DE FORMA ALFABÉTICA
	StoreType DESC

-- DESSA FORMA USAMOS COMO CRITÉRIO DE ORDENAÇÃO A SOMA DE DA COLUNA EmployeeCount
SELECT
	StoreType,
	SUM(EmployeeCount) AS 'Quantidade'
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY
	SUM(EmployeeCount) DESC
