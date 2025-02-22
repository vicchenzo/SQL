/* Exercício 6.
A empresa implementou um programa de fidelização de clientes empresariais. Todos aqueles 
que comprarem mais de 3000 unidades de um mesmo produto receberá descontos em outras 
compras. 
*/
-- Você deverá descobrir as informações de CustomerKey e CompanyName destes clientes
-- Utilizar Tabela FactOnlineSales

SELECT 
	CustomerKey,
	ProductKey,
	COUNT(*)
FROM FactOnlineSales
GROUP BY CustomerKey, ProductKey
HAVING COUNT(*) >= 3000 

-- Neste caso serão exibidas as combinações que ocorreram 3000 vezes ou mais, ou seja, clientes que compraram o mesmo produto 3000 vezes ou mais

SELECT
	CustomerKey,
	CompanyName
FROM DimCustomer
WHERE CustomerKey IN (
				SELECT CustomerKey
				FROM FactOnlineSales
				GROUP BY CustomerKey, ProductKey
				HAVING COUNT(*) >= 3000 
				)
