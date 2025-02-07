-- [SQL Server] [Subqueries e CTE's] Aula 6 de 28: ANY, SOME e ALL
USE ContosoRetailDW

CREATE TABLE funcionarios(
id_funcionario INT,
nome VARCHAR(50),
idade INT,
sexo VARCHAR(50))

INSERT INTO funcionarios(id_funcionario, nome, idade, sexo)
VALUES	
	(1, 'Julia', 20, 'F'),
	(2, 'Daniel', 21, 'M'),
	(3, 'Amanda', 22, 'F'),
	(4, 'Pedro', 23, 'M'),
	(5, 'André', 24, 'M'),
	(6, 'Luisa', 25, 'F')

SELECT * FROM funcionarios

-- Selecione os funcionários do sexo masculino (MAS, utilizando a coluna de IDADE para isso)

SELECT * FROM funcionarios
WHERE idade IN (21, 23, 24)

SELECT * FROM funcionarios
WHERE idade IN (SELECT idade FROM funcionarios WHERE sexo = 'M')

/*
= ANY(valor1, valor2, valor3) :
Equivalente ao IN, retorna as linhas da tabela que sejam iguais ao valor1, OU valor2, OU valor3
*/

SELECT * FROM funcionarios
WHERE idade = ANY (SELECT idade FROM funcionarios WHERE sexo = 'M')

/*
> ANY(valor1, valor2, valor3) :
Retorna as linhas da tabela com valores maiores que o valor1, OU valor2, OU valor3. Ou seja, maior que o mínimo dos valores
*/
SELECT * FROM funcionarios
WHERE idade > ANY (SELECT idade FROM funcionarios WHERE sexo = 'M')

-- Para a idade 20 (Julia) e 22 (Amanda), a comparação não retorna TRUE, pois 20 não é maior que qualquer um dos valores (21, 23, 24).
-- Para a idade 25 (Luisa), a comparação retorna TRUE, já que 25 é maior que 21, 23 e 24.
-- Para a idade 23 (Pedro), a comparação retorna TRUE, porque 23 é maior que algum (no caso, 21).
-- Para a idade 24 (André), a comparação retorna TRUE porque 24 é maior que algum (no caso, 21).

/*
< ANY(valor1, valor2, valor3) :
Retorna as linhas da tabela com valores menores que o valor1, OU valor2, OU valor3. Ou seja, menor que o minimo dos valores
*/

SELECT * FROM funcionarios
WHERE idade < ANY (SELECT idade FROM funcionarios WHERE sexo = 'M')


/*
> ALL(valor1, valor2, valor3) :
Retorna as linhas da tabela com valores maiores que o valor1, E valor2, E valor3. Ou seja, maior que o máximo dos valores
*/

SELECT * FROM funcionarios
WHERE idade > ALL (SELECT idade FROM funcionarios WHERE sexo = 'M')

/*
< ALL(valor1, valor2, valor3) :
Retorna as linhas da tabela com valores menores que o valor1, E valor2, E valor3. Ou seja, menor que o mínimo dos valores
*/

SELECT * FROM funcionarios
WHERE idade < ALL (SELECT idade FROM funcionarios WHERE sexo = 'M')

