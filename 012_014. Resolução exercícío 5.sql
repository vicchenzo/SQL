/*O setor de marketing está com algumas ideias de ações para alavancar as vendas em 2021. Uma 
delas consiste em realizar sorteios entre os clientes da empresa. 
Este sorteio será dividido em categorias:
‘Sorteio Mãe do Ano’: Nessa categoria vão participar todas as mulheres com filhos.
‘Sorteio Pai do Ano’: Nessa categoria vão participar todos os pais com filhos.
‘Caminhão de Prêmios’: Nessa categoria vão participar todas os demais clientes (homens e 
mulheres sem filhos).
Seu papel será realizar uma consulta à tabela DimCustomer e retornar 3 colunas:
- FirstName AS ‘Nome’
- Gender AS ‘Sexo’
- TotalChildren AS ‘Qtd. Filhos’
- EmailAdress AS ‘E-mail’
- Ação de Marketing: nessa coluna você deverá dividir os clientes de acordo com as categorias 
‘Sorteio Mãe do Ano’, ‘Sorteio Pai do Ano’ e ‘Caminhão de Prêmios’*/

SELECT * FROM DimCustomer

SELECT
	FirstName AS 'Nome',
	Gender AS 'Sexo',
	TotalChildren AS 'Filhos',
	EmailAddress AS 'Email',
	CASE
		WHEN Gender = 'F' AND TotalChildren > 0 THEN 'Sorteio Mãe do Ano'
		WHEN Gender = 'M' AND TotalChildren > 0 THEN 'Sorteio Pai do Ano'
		ELSE 'Sorteio Caminhão de Prêmios'
	END AS 'Ação de Marketing'
FROM
	DimCustomer
