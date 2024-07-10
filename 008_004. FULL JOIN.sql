-- FULL OUTER JOIN VAI BASICAMENTE TRAZER TODAS AS LINHAS DA NOSSA TABELA, O QUE ELE NÃO ENCONTRAR EM UMA TABELA ELE COLOCA COMO NULL

SELECT * FROM produtos
SELECT * FROM subcategoria

SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria, -- Aqui está sendo considerado a coluna de id_subcategoria da tabela de produtos, e na tabela de produtos não temos esses ID's
	nome_subcategoria
FROM
	produtos
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

SELECT
	id_produto,
	nome_produto,
	subcategoria.id_subcategoria, -- Portanto quando mudamos a tabela para SUBCATEGORIA, é puxado os valores 3 e 4 da tabela de SUBCATEGORIA
	nome_subcategoria
FROM
	produtos
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
