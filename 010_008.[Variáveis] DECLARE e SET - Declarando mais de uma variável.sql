-- DECLARANDO MAIS DE UMA VARIÁVEL

-- DECLARAÇÃO DE VARIÁVEL
-- PRIMEIRA OPÇÃO
DECLARE @var1 INT
DECLARE @var2 INT
DECLARE @texto VARCHAR(30)
DECLARE @data DATETIME

SET @var1 = 10
SET @var2 = 20
SET @texto = 'Um texto qualquer'
SET @data = '16/07/2024'

SELECT @VAR1, @VAR2, @texto, @data

-- SEGUNDA OPÇÃO
DECLARE @var INT,
		@texto VARCHAR(30),
		@data DATETIME

SET @var = 10
SET @texto = 'Um texto qualquer'
SET @data = '16/07/2024'

SELECT @var, @texto, @data

-- TERCEIRA OPÇÃO
DECLARE @var1 INT = 10,
		@texto VARCHAR(30) = 'Um texto qualquer',
		@data DATETIME = '16/07/2024'

SELECT @var1, @texto, @data
