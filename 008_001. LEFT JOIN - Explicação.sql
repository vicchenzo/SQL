-- Usando LEFT JOIN

SELECT * FROM produtos
SELECT * FROM subcategoria

SELECT 
	produtos.id_produto, -- COLOCAMOS O NOME DA TABELA PONTO NOME DA COLUNA QUE VAMOS UTILIZAR NA TABELA FINAL (NOME_TABELA.NOME_COLUNA)
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria -- POR ULTIMO PEGAMOS A COLUNA QUE ESTÁ NA SEGUNDA TABELA, A QUE VAMOS UTILIZAR
FROM
	produtos -- TABELA EM QUE VAMOS ADICIONAR A INFORMAÇÃO COMPLEMENTAR, NOSSA TABELA PRINCIPAL
LEFT JOIN subcategoria -- TABELA ONDE VAMOS EXTRAIR AS INFORMAÇÕES
	ON produtos.id_subcategoria = subcategoria.id_subcategoria -- ESQUERDA COLUNA QUE SERÁ NOSSA CHAVE PRIMÁRIA DIREITA COLUNA QUE SERÁ NOSSA CHAVE SECUNDÁRIA

-- PODERIA SER FEITO TAMBÉM DA SEGUINTE MANEIRA

SELECT 
	id_produto, 
	nome_produto,
	produtos.id_subcategoria, -- TEMOS QUE IDENTIFICAR A COLUNA JÁ QUE O NOME DELA SE REPETE NA TABELA DE SUBCATEGORIA
	nome_subcategoria 
FROM
	produtos 
LEFT JOIN subcategoria 
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
