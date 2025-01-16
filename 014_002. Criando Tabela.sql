-- 003. CREATE TABLE - Criando a primeira tabela

-- Crie uma tabela chamada PRODUTOS
-- Esa tabela deve conter 4 colunas: id_produto, nome_produto, data_validade, preco_produto
-- Certifique-se de que os tipos das colunas está correto

-- PADRÃO DE CRIAÇÃO DE TABELA
-- Coluna1 TIPO1,
--		Coluna2 TIPO2,
--		Coluna3 TIPO3

-- SELECIONANDO BANCO DE DADOS
USE BDImpressionador

-- CRIANDO BANCO DE DADOS
 CREATE TABLE Produtos(
	id_produto INT,
	nome_produto VARCHAR(200),
	data_validade DATETIME,
	preco_produto FLOAT
)

  -- TESTANDO A TABELA QUE ACABAMOS DE CRIAR.
SELECT * FROM Produtos
