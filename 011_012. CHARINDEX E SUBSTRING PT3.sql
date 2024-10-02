-- Combine as funções CHARINDEX e SUBSTRING para extrair de forma automática qualquer sobrenome

DECLARE @varNome VARCHAR(100) = 'Victor Alejandro'

SELECT SUBSTRING(@varNome, CHARINDEX(' ', @varNome) +1, 10) AS 'Sobrenome'
