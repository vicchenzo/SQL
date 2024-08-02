-- [SQL Server] Variáveis
-- Aula 5 de 23: CAST - Especificando o tipo de um dado

-- 1) CAST: Função para especificar o tipo dos valores.
-- int: inteiro, float: decimal, varchar: string/texto, datetime: data e hora

SELECT CAST(21.45 AS int)

SELECT CAST(21.45 AS float)

SELECT CAST(18.7 AS varchar)

SELECT CAST('15.6' AS float)

SELECT CAST('31/05/2014' AS datetime)


-- Exemplo 1: Crie uma consulta juntando o texto 'O preço do produto é: ' com o valor 30.99

SELECT 'O preço do produto é: ' + CAST(30.99 AS VARCHAR(30))

-- Exemplo 2: Adicione 1 dia à data '20/06/2021'

SELECT CAST('20/06/2021' AS DATETIME) + 1
