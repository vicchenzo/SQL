-- CASE:  A função CASE permite tratar condições no SQL

/*
CASE
	WHEN teste_lógico THEN 'resultado1'
	ELSE 'resultado 2'
END
*/

-- Determine a situação do aluno. Média >= 6: aprovado. Caso contrário: reprovado

DECLARE @varNota FLOAT = 8.0

SELECT
	CASE
		WHEN @varNota >= 6 THEN 'APROVADO'
		ELSE 'REPROVADO'
	END AS 'SITUAÇÃO'

-- A data de vencimento de um produto é no dia 10/03/2022. Faça um teste lógico para verificar se um produto passou da validade ou não.

DECLARE @varDataVencimento DATETIME = '10/03/2022'
DECLARE @varDataAtual DATETIME = '30/04/2020'

SELECT
	CASE	
		WHEN @varDataAtual >= @varDataVencimento THEN 'PRODUTO VENCIDO'
		ELSE 'NA VALIDADE'
	END AS 'DATA DE VALIDADE'
