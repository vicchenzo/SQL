-- CREATE VIEW: Como assim 'the only statement in the banch'
-- [DEIXANDO CLARO QUE QUANDO FALO SOBRE ERRO O CÓDIGO FUNCIONARÁ NORMALMENTE MESMO COM O SUBLINHADO VERMELHO ABAIXO DO CÓDIGO DE CREATE VIEW]

-- Basicamente o CREATE VIEW não sabe onde começa/termina para podermos criar a VIEW
-- Quando colocamos qualquer informação fora do CREATE VIEW ele fica com uma linha vermelha em baixo como se fosse um ERRO
-- O ERRO gerado ['the only statement in the banch'] quer dizer que o CREATE VIEW deveria ser o unico statement [declaração] na consulta, ou seja, nao poderia ter nada além do CREATE VIEW

-- Quando professor cria uma nova consulta somente com o CREATE VIEW o ERRO não acontece devido ao fato de só existe o código do CREATE VIEW
-- A partir do momento que adicionamos qualquer informação além do código dará o ERRO

-- INSTRUÇÃO 'GO': 
-- A instrução GO serve para delimitar onde começa/termina um determinado bloco de códigos, ou seja, quando utilizamos GO [no começo ou no final de um cóðigo] ele não tem mais o erro no Código de CREATE VIEW [abaixo do CREATE VIEW não ficará mais vermelho]
-- Outro ponto, caso tenha comentários no nosso código não acontecerá nenhum tipo de erro, já que comentários não são conteúdo de códigos.


CREATE VIEW vwClientes1 AS
SELECT
	Firstname AS 'Nome',
	EmailAddress AS 'Email',
	BirthDate AS 'Nascimento'
FROM
	DimCustomer
GO

SELECT * FROM vwClientes

-- Atualizando as tabelas da aula anterior
GO
CREATE VIEW vwProdutos1 AS
SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Produto',
	ProductSubcategoryKey AS 'ID Subcategoria',
	BrandName AS 'Marca',
	UnitPrice AS 'Preço'
FROM 
	DimProduct
GO
