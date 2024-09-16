-- 2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser especificado.
-- A. Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.

-- B. Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.

-- C. Declare uma variável chamada ‘preco’ e atribua o valor 9.99.

-- D. Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre ‘quantidade’ e ‘preco’

-- E. Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.

DECLARE 
	@produto VARCHAR (30) = 'Celular',
	@quantidade INT = 12,
	@preco FLOAT = 9.99

DECLARE @faturamento FLOAT = @quantidade * @preco

SELECT
	@produto AS 'Celular',	
	@quantidade AS 'Quantidade',
	@preco AS 'Preço', 
	@faturamento AS 'Faturamento'
