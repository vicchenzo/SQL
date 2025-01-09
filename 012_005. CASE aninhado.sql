-- 7. CASE ANINHANDO
-- DimEmployee

SELECT * FROM DimEmployee

-- 4 CARGOS (Title)
-- Sales Group Manager
-- Sales Region Manager
-- Sales State Manager
-- Sales Store Manager

-- Assalariado (SalariedFlag) Signfica se o funcinário é assalariado ou não
-- SalariedFlag = 0: não é assalariado
-- SalariedFlag = 1: é assalariado

-- Situação: Cálculo do bônus | Cada um vai ter um bônus dependendo dos seus respectivos cargos
-- Sales Group Manager: 30% (Se for assalariado, 30%, senão, 20%. [Recebe o bônus dependendo da sua flag de assalariado])
-- Sales Region Manager: 15%
-- Sales State Manager: 7%
-- Sales Store Manager: 2%

SELECT
	FirstName,
	Title,
	SalariedFlag,
	CASE 
		WHEN Title = 'Sales Group Manager' THEN 0.3
		WHEN Title = 'Sales Region Manager' THEN 0.15
		WHEN Title = 'Sales State Manager' THEN 0.07
		ELSE 0.2
	END AS 'Bönus'
FROM 
	DimEmployee

-- Situação: Cálculo do bônus | Cada um vai ter um bônus dependendo dos seus respectivos cargos
-- Sales Group Manager: (Se for assalariado, 30%, senão, 20%. [Recebe o bônus dependendo da sua flag de assalariado])
-- Sales Region Manager: 15%
-- Sales State Manager: 7%
-- Sales Store Manager: 2%

-- Mesmo caso por°m agora o SALES GROUP MANAGER TERÁ UMA LÓGICA SITUAÇÃO DIFERENTE, COMO DESCRITO NO PRÓPRIO EXERCÍCIO

SELECT
	FirstName,
	Title,
	SalariedFlag,
	CASE 
		WHEN Title = 'Sales Group Manager' THEN
		CASE
			WHEN SalariedFlag = 1 THEN 0.3
			ELSE 0.2			
		END
		WHEN Title = 'Sales Region Manager' THEN 0.15
		WHEN Title = 'Sales State Manager' THEN 0.07
		ELSE 0.2
	END AS 'Bönus'
FROM 
	DimEmployee

-- Vide exercício acima dessa vez utilizando AND para solucionar a Consulta
SELECT
	FirstName,
	Title,
	SalariedFlag,
	CASE 
		WHEN Title = 'Sales Group Manager' AND SalariedFlag = 1 THEN 0.3
		WHEN Title = 'Sales Group Manager' AND SalariedFlag = 0 THEN 02
		WHEN Title = 'Sales Region Manager' THEN 0.15
		WHEN Title = 'Sales State Manager' THEN 0.07
		ELSE 0.2
	END AS 'Bonus'
FROM 
	DimEmployee
