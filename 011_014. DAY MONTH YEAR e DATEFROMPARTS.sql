-- Utilize as funções DAY, MONTH e YEAR para descobrir o dia, mês e ano da data: 18/05/2020

DECLARE @varData DATETIME = '23/02/2018'

SELECT
	DAY(@varData) AS 'DIA',
	MONTH(@vardata) AS 'MÊS',
	YEAR(@varData)AS 'ANO'

-- Utilize a função DATEFROMPARTS para obter uma data a partir das informaçòes de dia, mês e ano.

DECLARE 
	@VarDia INT = 15, 
	@VarMes INT = 6,
	@VarAno INT = 2017

-- PRECISA DE TRES ARGUMENTOS, DIA, MES E ANO NESTA ORDEM
SELECT
	DATEFROMPARTS(@VarAno, @VarMes, @VarDia) AS 'DATA'
