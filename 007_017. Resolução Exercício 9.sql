-- Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o Departamento (DepartmentName). Importante: Você deverá considerar apenas os funcionários ativos.

SELECT * FROM DimEmployee

SELECT
	DepartmentName AS 'Departamento',
	COUNT(DepartmentName) AS 'Qtd. Colaboradores'
FROM
	DimEmployee
WHERE
	Status = 'Current'
GROUP BY
	DepartmentName
