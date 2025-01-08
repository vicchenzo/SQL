-- AULA 002. CASE WHEN.. ELSE (EXEMPLO)

-- FAÇA UM SELECT DAS COLUNAS CustormerKey, FirstName e Gender NA TABELA DimCustomer e utilize o CASE para criar uma 4 coluna com a informação 'MASCULINO' ou 'FEMININO'

SELECT
	CustomerKey AS 'ID CLIENTE',
	FirstName AS 'NOME',
	Gender AS 'SEXO',
	CASE
		WHEN Gender = 'M' THEN 'MASCULINO'
		ELSE 'FEMININO'
	END AS 'SEXO [CASE]'
FROM
	DimCustomer
