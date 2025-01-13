/*O setor de logística deverá realizar um transporte de carga dos produtos que estão no depósito de Seattle para o depósito de Sunnyside. 
Não se tem muitas informações sobre os produtos que estão no depósito, apenas se sabe que 
existem 100 exemplares de cada Subcategoria. Ou seja, 100 laptops, 100 câmeras digitais, 100 
ventiladores, e assim vai.
O gerente de logística definiu que os produtos serão transportados por duas rotas distintas. Além 
disso, a divisão dos produtos em cada uma das rotas será feita de acordo com as subcategorias (ou 
seja, todos os produtos de uma mesma subcategoria serão transportados pela mesma rota):

Rota 1: As subcategorias que tiverem uma soma total menor que 1000 kg deverão ser 
transportados pela Rota 1.

Rota 2: As subcategorias que tiverem uma soma total maior ou igual a 1000 kg deverão ser 
transportados pela Rota 2.

Você deverá realizar uma consulta à tabela DimProduct e fazer essa divisão das subcategorias por cada rota. Algumas dicas:
- Dica 1: A sua consulta deverá ter um total de 3 colunas: Nome da Subcategoria, Peso Total e Rota.
- Dica 2: Como não se sabe quais produtos existem no depósito, apenas que existem 100 

exemplares de cada subcategoria, você deverá descobrir o peso médio de cada subcategoria e 
multiplicar essa média por 100, de forma que você descubra aproximadamente qual é o peso total
dos produtos por subcategoria.
- Dica 3: Sua resposta final deverá ter um JOIN e um GROUP BY*/

SELECT * FROM DimProduct

SELECT 
	ProductSubcategoryName AS 'Subcategoria',
	ROUND(AVG(Weight) * 100,2) AS 'Peso Total',
	CASE
		WHEN ROUND(AVG(Weight) * 100, 2) >= 1000 THEN 'ROTA 2' -- CASO WEIGHT >= 1000KG [ROTA 2]
		ELSE 'ROTA 1' -- CASO MENOR QUE 1.000 [ROTA 1]
	END AS 'Rota'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
ORDER BY ROUND(AVG(Weight) * 100,2) DESC
