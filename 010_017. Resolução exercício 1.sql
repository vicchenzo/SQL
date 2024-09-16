-- 019. Resolução Exercício 1
-- Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:

DECLARE 
	@valor1 INT = 10,
	@valor2 INT = 5,
	@valor3 INT = 34,
	@valor4 INT = 7

-- A. Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame essa variável de soma.
DECLARE 
	@valor1 INT = 10,
	@valor2 INT = 5

DECLARE @soma INT = @valor1 + @valor2
SELECT @soma AS 'Soma'

-- B. Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. Chame essa variável de subtracao.
DECLARE
	@valor3 INT = 34,
	@valor4 INT = 7

DECLARE @subtração INT = @valor3 - @valor4
SELECT @subtração AS 'Subtração'

-- C. Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o valor4. Chame essa variável de multiplicacao
DECLARE
	@valor1 INT = 10,
	@valor4 INT = 7

DECLARE @multiplicação INT = @valor1 * @valor4
SELECT @multiplicação AS 'Multiplicação'

-- D. Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame 
-- essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.
DECLARE
	@valor3 FLOAT = 34.0,
	@valor4 FLOAT = 7

DECLARE @divisão FLOAT = @valor3 / @valor4
SELECT ROUND(@divisão, 3, 1) AS 'Divisão'
