-- INNER JOIN tráz a interseção entre as duas tabelas, ou seja, as linhas que existem nas duas tabelas

SELECT * FROM produtos
SELECT * FROM subcategoria

-- Neste caso puxa o ID que existe nas duas tabelas, caso existir algum null ele não sera trazido.
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria, -- NESTE CASO TANTO FAZ QUAL TABELA EU UTILIZO ('produtos' ou 'subcategoria') POIS VAI APARECER SOMENTE OS EXISTENTE NA TABELA
	nome_subcategoria
FROM
	produtos -- TABELA PRINCIPAL, ONDE TEM AS INFORMAÇÕES QUE SÃO AS PRINCIPAIS, NESTE CASO A TABELA A
INNER JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria -- NA ESQUERDA CHAVE ESTRANGEIRA || DUREUTA CHAVE PRIMÁRIA
