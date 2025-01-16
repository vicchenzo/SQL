-- Exercício 3. 
-- A. A partir da tabela DimStore, crie uma View que considera apenas as lojas ativas. Faça um SELECT de todas as colunas. Chame essa View de vwLojasAtivas.
USE ContosoRetailDW

SELECT * FROM DimStore

GO
CREATE VIEW vwLojasAtivas AS
SELECT * FROM DimStore
WHERE Status = 'On'
GO

SELECT * FROM vwLojasAtivas

-- B. A partir da tabela DimEmployee, crie uma View de uma tabela que considera apenas os funcionários da área de Marketing. Faça um SELECT das colunas: FirstName, EmailAddress e DepartmentName. Chame essa de vwFuncionariosMkt.

SELECT * FROM DimEmployee

GO
CREATE VIEW vwFuncionariosMkt AS
SELECT
	CONCAT(FirstName, ' ', LastName) AS 'Nome',
	EmailAddress AS 'Email',
	DepartmentName AS 'Departamento'
FROM
	DimEmployee
WHERE DepartmentName = 'Marketing'
GO

SELECT * FROM vwFuncionariosMkt

-- C. Crie uma View de uma tabela que considera apenas os produtos das marcas Contoso e Litware. Além disso, a sua View deve considerar apenas os produtos de cor Silver. 
-- Faça um SELECT de todas as colunas da tabela DimProduct. Chame essa View de vwContosoLitwareSilver

SELECT * FROM DimProduct

GO
CREATE VIEW vwContosoLitwareSilver AS
SELECT
	*
FROM
	DimProduct
WHERE BrandName IN(
	'Contoso',
	'Litware'
)
	AND ColorName = 'Silver'
GO

SELECT * FROM vwContosoLitwareSilver
