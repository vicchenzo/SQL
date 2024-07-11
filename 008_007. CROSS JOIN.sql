SELECT * FROM marcas
SELECT * FROM subcategoria

  -- Iniciando estudos de Cross Join 
SELECT
	marca,
	nome_subcategoria
FROM
	marcas cross join subcategoria
