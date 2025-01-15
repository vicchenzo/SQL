-- 2. Crie uma View contendo as informações de Nome Completo (FirstName + LastName), Gênero (por extenso), E-mail e Renda Anual (formatada com R$).
-- Utilize a tabela DimCustomer. Chame essa View de vwClientes

GO
CREATE VIEW vwClientes AS
SELECT
	CONCAT(FirstName, ' ', LastName) AS 'Nome',
	REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'Genero',
	EmailAddress AS 'Email',
	FORMAT(YearlyIncome, 'C') AS 'Renda Anual' -- C Formatação com Currency
FROM
	DimCustomer
GO

SELECT * FROM vwClientes 
