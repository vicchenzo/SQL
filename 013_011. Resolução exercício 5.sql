-- Exercício 5
-- A. Na View criada na letra a da questão 1, adicione a coluna de BrandName
SELECT * FROM vwProdutos

GO
ALTER VIEW vwProdutos AS
SELECT
	ProductName AS 'Produto',
	BrandName AS 'Marca',
	ColorName AS 'Cor',
	UnitPrice AS 'Preço',
	UnitCost AS 'Custo'
FROM
	DimProduct
GO

-- B. Na View criada na letra b da questão 1, faça um filtro e considere apenas os funcionários do sexo feminino

SELECT * FROM vwFuncionarios

GO
ALTER VIEW vwFuncionarios AS
SELECT
	Firstname AS 'Nome',
	BirthDate AS 'Nascimento',
	DepartmentName AS 'Departamento'
FROM
	DimEmployee
WHERE GENDER = 'F'
GO

-- C. Na View criada na letra c da questão 1, faça uma alteração e filtre apenas as lojas ativas. 
SELECT * FROM vwLojasAtivas -- 306 Linhas Código antigo de vwLojas | Atual 294 Linhas
SELECT * FROM DimStore

GO
ALTER VIEW vwLojasAtivas AS
SELECT 
	StoreKey AS 'ID Loja',
	StoreName AS 'Loja',
	OpenDate as 'Abertura'
FROM 
	DimStore
WHERE Status = 'On'
GO
