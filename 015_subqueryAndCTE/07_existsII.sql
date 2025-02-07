-- [SQL Server] [Subqueries e CTE's] Aulas 7 e 8 de 28: EXISTS

-- Exemplo: Retornar uma tabela com todos os produtos (ID Produto e Nome Produto) que possuem alguma venda no dia 01/01/2007
-- Tabela que vai identificar as informações de vendas: FactSales

SELECT * FROM DimProduct

-- Total de Produtos: 2517 
-- 2517 - 1724 = 793

-- Conta a quantidade de Produtos
SELECT COUNT(*) FROM DimProduct -- 2517 Produtos existentes

-- Retorna uma tabela com todos os produtos que possuem alguma venda
SELECT
	ProductKey,
	ProductName
FROM	
	DimProduct
WHERE EXISTS(
	SELECT
		ProductKey
	FROM
		factSales
	WHERE
		DateKey = '01/01/2007'
		--AND factSales.ProductKey = DimProduct.ProductKey -- Verificamos se o ID do produto da FactSales é igual ID do produto na DimProduct
		)

-- Solução alternativa com o ANY

SELECT
	ProductKey,
	ProductName
FROM	
	DimProduct
WHERE ProductKey = ANY(
	SELECT
		ProductKey
	FROM
		factSales
	WHERE
		DateKey = '01/01/2007'
		-- AND factSales.ProductKey = DimProduct.ProductKey
)
