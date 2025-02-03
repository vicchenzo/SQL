SELECT * FROM DimStore

-- A. Quantos funcionários tem a loja com mais funcionários? 
SELECT
	MAX(EmployeeCount) AS 'Maior Qtd. Funcionários'
FROM
	DimStore
-- B. Qual é o nome dessa loja? 

SELECT TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd Funcionários'
FROM
	DimStore
ORDER BY
	EmployeeCount Desc
 
-- C. QUANTOS FUNCIONÁRIOS TEM A LOJA COM MENOS FUNCIONÁRIOS?

SELECT 
	MIN(EmployeeCount) AS 'Menor Qtd. Funcionários'
FROM
	DimStore

-- D. QUAL NOME DESSA LOJA?

SELECT TOP(1)
	StoreName AS 'Nome da loja',
	EmployeeCount AS 'Qtd de funcionários'
FROM
	DimStore
WHERE
	EmployeeCount IS NOT NULL
ORDER BY
	EmployeeCount ASC