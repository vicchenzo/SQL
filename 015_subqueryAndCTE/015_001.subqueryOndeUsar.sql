-- [SQL Server] [Subqueries e CTE's] Aula 2 de 28: O que é uma Subquery e onde usamos

/* 
1. O que é uma Subquery?

Uma Subconsulta (ou Subquery ou SubSELECT) nada mais é do que uma consulta dentro de outra consulta. Ou seja, com uma subquery conseguimos utilizar o resultado de uma query (consulta) dentro de outra consulta.

2. Onde utilizamos uma Subquery
Subqueries podem ser utilizadas em 3 situações possíveis:
PRIMEIRA: Junto com o Where, funcionando como um filtro variável
SEGUNDA: Junto com o SELECT, como uma nova coluna na tabela
TERCEIRA: Junto com o FROM, como uma nova tabela

Ex:

Imagina que eu quero selecionar os produtos com o Preço maior do que a média.
1° PASSO: Descobria média
*/
SELECT AVG(UnitPrice) FROM DimProduct



-- 2° PASSO: Descobrir quais produtos estão acima da média de preço utilizando WHERE
-- Neste caso estamos usando como filtro o valor que encontramos na Query acima
SELECT 
	* 
FROM 
	DimProduct 
WHERE UnitPrice > 356.8301

-- Para deixar de uma forma automatica onde caso a tabela altere para cima ou para baixo com novas vendas fazemos uma subQuery
SELECT 
	*
FROM 
	DimProduct
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM DimProduct)


/*

3. Onde usamos uma subquery?

Em 4 situações possíveis:

1- Subquery junto com um WHERE, como um filtro dinâmico e escalar (valor único)

SELECT
	Coluna1,
	Coluna2
FROM
	Tabela
WHERE Coluna1 = (SELECT)

2- Subquery junto com um WHERE, como um filtro dinâmico e em lista (vários valores)

SELECT
	Coluna1,
	Coluna2
FROM
	Tabela
WHERE Coluna1 IN (SELECT)


3- Subquery junto com um SELECT, como uma nova coluna

SELECT
	Coluna1,
	Coluna2,
	(SELECT)
FROM
	Tabela
	

4- Subquery junto com um FROM, como uma nova tabela

SELECT
	Coluna1,
	Coluna2
FROM
	(SELECT) AS TabelaAuxiliar
*/
