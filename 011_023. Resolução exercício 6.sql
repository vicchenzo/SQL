-- Exercício 6
-- Descubra qual é a loja que possui o maior tempo de atividade (em dias). Você deverá fazer essa 
-- consulta na tabela DimStore, e considerar a coluna OpenDate como referência para esse cálculo

SELECT * FROM DimStore

SELECT
	StoreName,
	OpenDate AS 'Abertura',
	CloseDate AS 'Fechamento',
	DATEDIFF(DAY, OpenDate, GETDATE()) AS 'Dias em Atividade'
FROM
	DimStore
WHERE CloseDate IS NULL
ORDER BY DATEDIFF(DAY, OpenDate, GETDATE()) DESC
