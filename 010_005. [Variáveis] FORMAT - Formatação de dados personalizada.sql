-- [SQL Server] Variáveis
-- Aula 6 de 23: FORMAT - Formatação de dados personalizada

--FORMAT: Função para formatação de valores no SQL

-- a) Numéricos:
SELECT FORMAT(1000, 'N')
SELECT FORMAT(1000, 'G')

-- b) Personalizados:
SELECT FORMAT(123456789, '###-##-####')

-- c) Data:
SELECT FORMAT(CAST('21/03/2021' AS DATETIME), 'dd/MM/yyyy')


-- SQL_VARIANT_PROPERTY
SELECT SQL_VARIANT_PROPERTY('31/05/2014', 'BaseType')
SELECT SQL_VARIANT_PROPERTY(CAST('31/05/2014' AS datetime), 'BaseType')
