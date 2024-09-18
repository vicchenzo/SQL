-- MANIPULANDO STRINGS E DATAS NO SQL
-- AULA 002. FUNÇÃO CONCAT
-- A função CONCAT no SQL Server é usada para concatenar (juntar) duas ou mais strings em uma única string. 
-- Ela aceita um número variável de argumentos e os combina em uma sequência contínua de texto.
SELECT * FROM DimCustomer

SELECT
	FirstName AS 'Name',
	LastName AS 'Sobrenome',
	CONCAT(FirstName, ' ', LastName) AS 'Nome Completo',
	EmailAddress AS 'Email'
FROM
	DimCustomer
