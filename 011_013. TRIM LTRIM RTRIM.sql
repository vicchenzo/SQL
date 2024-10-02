-- Funções para retirar espaços adicionais dentro de um texto
-- TRIM: Retira espaços adicionais à esquerda e a direita do texto
-- LTRIM: Retira espaços adicionais à esquerda do texto
-- RTRIM: Retira espaços adicionais à direita do texto

-- Utilize as funções acima no código '  ABC123   '

DECLARE @varCodigo VARCHAR(50) = '  ABC123   '

SELECT 
	TRIM(@varCodigo) AS 'TRIM',-- Retira espaços adicionais de ambos os lados
	LTRIM(@varCodigo) AS 'LTRIM', -- Retira espaços adicionais  apenas do lado esquerdo
	RTRIM(@varCodigo) AS 'RTRIM' -- Retira espaços adicionais apenas do lado direito

-- Vamos descobrir a quantidade de caracteres que cada TRIM me retorna

SELECT 
	DATALENGTH(TRIM(@varCodigo)) AS 'TRIM', -- Contando apenas o que está dentro dos espaços
	DATALENGTH(LTRIM(@varCodigo)) AS 'LTRIM', -- Removeu os espaços a esquerda e contou do primeiro caracter A até os espaços a direita
	DATALENGTH(RTRIM(@varCodigo)) AS 'RTRIM' -- Removeu os espaços a direita e contou da esquerda até o último numero 3
