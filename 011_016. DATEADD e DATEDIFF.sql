-- DATEADD e DATEDIFF:

-- DATEADD: ADICIONA ou SUBTRAI uma determinada quantidade de dias, meses ou anos a uma data.
-- DATEDIFF: Calcula a diferença entre duas datas

DECLARE 
	@varData1 DATETIME = '10/07/2020',
	@varData2 DATETIME = '05/03/2020',
	@varData3 DATETIME = '14/11/2021'

-- DATEADD: VAI PEDIR 3 ARGUMENTOS:
-- FUNÇÃO, Se queremos dias, meses etc
-- Quantidade de dias
-- DATA OU VARIÁVEL QUE VAMOS APLICAR
SELECT 
	DATEADD(DAY, 30, @varData1),
	DATEADD(MONTH, -1, @varData1)

--DATEDIFF: VAI PEDIR 3 ARGUMENTOS
--CALCULA DIFERENÇA ENTRE DUAS DATAS
SELECT
	DATEDIFF(DAY, @varData2, @varData3) AS 'DIAS',
	DATEDIFF(MONTH, @varData2, @varData3) AS 'MESES',
	DATEDIFF(WEEK, @varData2, @varData3) AS 'SEMANAS'
