-- Resolução exercício 01.
-- A partir da tabela DimProduct, crie uma View contendo as informações de ProductName, ColorName, UnitPrice e UnitCost, da tabela DimProduct. Chame essa View de vwProdutos.
USE ContosoRetailDW

GO
CREATE VIEW vwProdutos AS
SELECT
	ProductName AS 'Produto',
	ColorName AS 'Cor',
	UnitPrice AS 'Preço',
	UnitCost AS 'Custo'
FROM
	DimProduct
GO

SELECT * FROM vwProdutos

-- B. A partir da tabela DimEmployee, crie uma View mostrando FirstName, BirthDate, DepartmentName. Chame essa View de vwFuncionarios.
GO
CREATE VIEW vwFuncionarios AS
SELECT
	FirstName AS 'Nome',
	BirthDate AS 'Nascimento',
	DepartmentName AS 'Departamento'
FROM
	DimEmployee
GO

-- C. A partir da tabela DimStore, crie uma View mostrando StoreKey, StoreName e OpenDate. Chame essa View de vwLojas.
CREATE VIEW vwLojas AS
SELECT
	StoreKey AS 'ID Loja',
	StoreName AS 'Loja',
	OpenDate AS 'Abertura'
FROM
	DimStore
