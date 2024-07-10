SELECT * FROM produtos
SELECT * FROM subcategoria

-- LEFT ANTI JOIN | Não existe a escrita deste comando
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	nome_subcategoria IS NULL -- Assim filtramos a tabela na coluna SUBCATEGORIA quem IS NULL


-- RIGHT ANTI JOIN
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL


-- FULL ANTI JOIN
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL  OR nome_subcategoria IS NULL

