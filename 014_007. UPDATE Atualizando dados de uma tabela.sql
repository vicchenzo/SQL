-- 010. UPDATE - Atualizando o dado de uma tabela

-- Vamos atualizar o dado de 'nome_produto' que não passamos na aula passada utilizando o UPDATE

UPDATE Produtos -- Primeiro vemos qual a tabela onde queremos atualizar o dado
SET nome_produto = 'Macarrão' -- Quais valores a gente quer modificar
WHERE id_produto = 3 -- Espicificar qual linha vamos alterar[onde o id = 3]

SELECT * FROM Produtos
