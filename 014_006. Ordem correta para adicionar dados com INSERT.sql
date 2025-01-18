-- 009. Ordem correta para adicionar dados com o INSERT
-- Professor troca as posições da coluna para adicionar novos valores também deixa de fora uma coluna para fazer o teste
-- Regra: Os nomes das colunas tem que ser o mesmo da tabela
-- Regra: Não tem problema inverter a ordem dos argumentos[ordem das colunas] desde que na hora de passar os valores eu mantenha a mesma descrição contida no insert para os dados que serão selecionados.

INSERT INTO	Produtos(data_validade, id_produto, preco_produto)
VALUES
	('31/05/2023', 3, 33.99)

-- Começamos as posições das colunas com data de validade, então na inserção de dados temos que começar com data de validade

SELECT * FROM Produtos
