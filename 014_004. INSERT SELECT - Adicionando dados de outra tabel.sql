-- 004. INSERT SELECT - Adicionando dados de outra tabela
-- Existem duas maneiras de adicionar dados dentro de uma tabela, uma delas é adicionando dados de uma tabela existente no nososo banco de dados

INSERT INTO Produtos(id_produto, nome_produto, data_validade, preco_produto)
SELECT
	Productkey,
	ProductName,
	AvailableForSaleDate,
	UnitPrice
FROM
	ContosoRetailDW.dbo.DimProduct

SELECT * FROM Produtos
