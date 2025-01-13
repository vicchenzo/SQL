/* Exercício 6.
Descubra qual é a loja que possui o maior tempo de atividade (em dias). Você deverá fazer essa 
consulta na tabela DimStore, e considerar a coluna OpenDate como referência para esse cálculo.

Atenção: lembre-se que existem lojas que foram fechadas */

SELECT * FROM DimStore

--Aqui perdemos a informação das lojas que já fecharam, pode ser que tenha uma loja que já fechou que tenha um tempo em atividade maior
SELECT 
	StoreName,
	OpenDate,
	CloseDate,
	DATEDIFF(DAY, OpenDate, GETDATE()) AS 'Dias de Atividade'
FROM
	DimStore
WHERE CloseDate IS NULL

--Aqui corrigimos a falta de informação que nos seria dado caso a loja tenha fechado usando um CASE
SELECT 
	StoreName,
	OpenDate,
	CloseDate,
	CASE	
		WHEN CloseDate IS NULL THEN DATEDIFF(DAY, OpenDate, GETDATE())
		ELSE DATEDIFF(DAY, OpenDate, CloseDate)
	END AS 'Dias em Atividade'
FROM
	DimStore
