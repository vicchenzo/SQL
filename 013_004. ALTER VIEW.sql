-- ALTER VIEW
-- Altere uma VIEW criada no exemplo anterior para incluir apenas o cliente Feminino
USE ContosoRetailDW
SELECT * FROM vwClientes 

GO
ALTER VIEW vwClientes AS
SELECT
	Firstname AS 'Nome',
	EmailAddress AS 'Email',
	BirthDate AS 'Nascimento',
	GENDER AS 'Sexo'
FROM
	DimCustomer
WHERE Gender = 'F'
GO
