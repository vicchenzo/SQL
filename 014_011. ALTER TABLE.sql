-- [SQL Server] CRUD
-- 011. ALTER TABLE

-- ALTER TABLE: Adicionar colunas, alterar tipo de dados de uma coluna e Deletar coluna
-- Utilize a tabela funcionários mostrada na aula anterior
USE BDImpressionador

SELECT * FROM Funcionarios 

-- Adicionar coluna na tabela Funcionarios
-- Ao adicionar coluna, [Nome da coluna],[Tipo da coluna]
-- Feito isso executamos código acima
ALTER TABLE	Funcionarios 
ADD cargo VARCHAR(100), bonus FLOAT

-- Adicionando dados de cargo e bonus para o primeiro Funcionario da tabela
UPDATE Funcionarios
SET cargo = 'Analista', bonus = 0.15
WHERE id_funcionario = 1

-- Alterar tipo de dados de uma coluna:
ALTER TABLE Funcionarios
ALTER COLUMN salario INT


-- Deletar coluna:
ALTER TABLE Funcionarios
DROP COLUMN cargo, bonus

