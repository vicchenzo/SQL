-- UPPER > Transforma um texto em maiuscula
-- LOWER > Transforma um texto em minúscula

-- Faça uma consulta a tabela DimCustomer e utilize as funções UPPER  e LOWER na coluna FirstName para observar o resultado

SELECT * FROM DimCustomer

SELECT 
	CONCAT(FirstName, ' ', LastName),
	UPPER(FirstName) AS 'NOME',
	LOWER(EmailAddress) AS 'EMAIL',
	EmailAddress AS 'Email'
FROM 
	DimCustomer
