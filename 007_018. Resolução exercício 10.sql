-- Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). 
-- Você deve considerar apenas as mulheres, dos departamentos de Production, Marketing, Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000. 

SELECT * FROM DimEmployee

SELECT 
	Title AS 'Cargo',
	SUM(VacationHours) AS 'Horas Totais'
FROM
	DimEmployee
WHERE
	Gender = 'F'
	AND DepartmentName IN (
	'Production',
	'Marketing',
	'Engineering',
	'Finance'
	)
	AND HireDate BETWEEN '1999-01-01' AND '2000-12-31'
GROUP BY
	Title


