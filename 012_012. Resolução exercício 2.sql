/* Exercício 02.
Você ficou responsável pelo controle de produtos da empresa e deverá fazer uma análise da 
quantidade de produtos por Marca.
A divisão das marcas em categorias deverá ser a seguinte:

CATEGORIA A: Mais de 500 produtos 
CATEGORIA B: Entre 100 e 500 produtos 
CATEGORIA C: Menos de 100 produtos 

Faça uma consulta à tabela DimProduct e retorne uma tabela com um agrupamento de Total de 
Produtos por Marca, além da coluna de Categoria, conforme a regra acima.
*/

SELECT * FROM DimProduct

SELECT
	BrandName,
	COUNT(*) AS 'Qtde', -- FUNÇÃO DE AGREGAÇÃO
	CASE
		WHEN COUNT(*) >500 THEN 'Categoria A'
		WHEN COUNT(*) BETWEEN 100 AND 500 THEN 'Categoria B'
		ELSE 'Categoria C'
	END AS 'Categoria'
FROM
	DimProduct
GROUP BY BrandName
ORDER BY COUNT(*) DESC

-- QUANDO UTILIZO FUNÇÃO DE AGREGAÇÃO O SQL PRECISA SABER COMO AGRUPAR AS LINHAS PARA CALCULAR O VALOR [NESTE CASO DE COUNT(*)] PARA GRUPO DE BRANDNAME
-- SEM O GROUP BY O BD NÃO SABERIA COMO FAZER ISSO, RESULTANDO EM UM ERRO, O GROUP BY ORGANIZA OS DADOS EM GRUPOS BASEADO EM BRANDNAME, PERMITINDO QUE O COUNT(*) SEJA CALCULADO PARA CADA MARCA
