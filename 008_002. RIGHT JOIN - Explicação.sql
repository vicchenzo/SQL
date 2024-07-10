-- RIGHT JOIN: Garante a inclusão total da tabela à direita (subcategoria), independentemente da correspondência na tabela à esquerda (produtos).
-- Use RIGHT JOIN quando você está mais interessado em garantir que todas as entradas da tabela à direita estejam presentes no resultado.

SELECT * FROM produtos
SELECT * FROM subcategoria

SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

--LEFT JOIN: Garante a inclusão total da tabela à esquerda (produtos), independentemente da correspondência na tabela à direita (subcategoria).
-- Use LEFT JOIN quando você está mais interessado em garantir que todas as entradas da tabela à esquerda estejam presentes no resultado.
SELECT 
	id_produto, 
	nome_produto,
	produtos.id_subcategoria, -- TEMOS QUE IDENTIFICAR A COLUNA JÁ QUE O NOME DELA SE REPETE NA TABELA DE SUBCATEGORIA
	nome_subcategoria 
FROM
	produtos 
LEFT JOIN subcategoria 
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

-- Em resumo, a escolha entre RIGHT JOIN e LEFT JOIN depende de qual tabela você quer garantir que todas as linhas sejam incluídas no resultado, mesmo se não houver correspondências na outra tabela.
