/*Vamos continuar analisando a tabela FactStrategyPlan. 
Além da coluna AccountKey que identifica o tipo de conta, há também uma outra coluna chamada ScenarioKey. 
Essa coluna possui a numeração que identifica o tipo de cenário: Real, Orçado e Previsão.
Faça um INNER JOIN para criar uma tabela contendo o ScenarioName para cada ScenarioKey
da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
• StrategyPlanKey
• DateKey
• ScenarioName 
• Amount
*/

SELECT TOP(100) * FROM FactStrategyPlan
SELECT TOP(100) * FROM DimScenario

SELECT
	StrategyPlanKey,
	DateKey,
	ScenarioName,
	Amount
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
