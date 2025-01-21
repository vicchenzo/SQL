-- [SQL Server] [Subqueries e CTE's] Aula 5 de 28: Subquery na prática - Aplicação com o Where (Exemplo 3)

-- Para entender a ideia por trás das subqueries, vamos começar fazendo 3 exemplos com a aplicação WHERE.

-- Exemplo 3: Filtre a tabela FactSales e mostre apenas as vendas referentes às lojas com 100 ou mais funcionários

USE ContosoRetailDW

-- Aqui descobrimos quais ID_Loja tem 100 ou mais funcionários
SELECT 
	StoreKey 
FROM 
	DimStore
WHERE EmployeeCount >= 100

-- Caso seja adicionado alguma loja com 100 ou mais funcionários não vai entrar na tabela abaixo, portanto vamos automatiza-la
SELECT
	*
FROM
	FactSales
WHERE StoreKey IN (199, 200, 280)

-- AUTOMAÇÃO
SELECT
	*
FROM
	FactSales
WHERE StoreKey IN (
	SELECT 
		StoreKey 
	FROM 
		DimStore
	WHERE EmployeeCount >= 100
)

-- Segundo ChatGPT
-- Operador IN: O IN é utilizado quando você quer verificar se UM VALOR ESTÁ DENTRO DE UMA LISTA DE VALORES. Ele pode comparar um valor com vários resultados retornados por uma subconsulta ou lista explícita.
-- Operador =: Compara apenas um valor com UM ÚNICO RESULTADO. Se você tentar usar = em uma subconsulta que retorna múltiplos resultados, o SQL irá gerar um erro, porque = só pode lidar com um valor único.
