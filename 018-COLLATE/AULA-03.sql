-- LIKE Case Sensitive

CREATE TABLE Nomes(
ID INT, 
Nome VARCHAR(100) COLLATE Latin1_General_CS_AS)

INSERT INTO Nomes(ID, Nome)
VALUES
	(1, 'Matheus'),
	(2, 'Marcela'),
	(3, 'marcos'),
	(4, 'MAurício'),
	(5, 'Marta'),
	(6, 'Miranda'),
	(7, 'Melissa'),
	(8, 'Lucas'),
	(9, 'luísa'),
	(10, 'Pedro')

SELECT * FROM Nomes

-- CASE SENSITIVE (diferenciando maiúsculas de minúsculas)

-- LIKE: VERIFICA//IDENTIFICA SE UM TEXTO OU UMA SEQUENCIA DE CARACTERES ESTÁ CONTIDA NA NOSSA CÉLULA DA TABELA
-- '%' REPRESENTA UM TEXTO QUALQUER APÓS O TEXTO QUE QUEREMOS IDENTIFICAR

-- LIKE PADRÃO COMO APRENDEMOS ATÉ AGORA:
SELECT *
FROM Nomes
WHERE Nome LIKE 'mar%'

-- RETORNA AS LINHAS ONDE A PRIMEIRA LETRA SEJA 'm', a segunda seja 'a' e a terceira seja 'r'
SELECT *
FROM Nomes
WHERE Nome LIKE '[m][a][r]%'

-- RETORNA AS LINHAS ONDE A PRIMEIRA LETRA SEJA [M] MAIÚSCULO, A SEGUNDA SEJA 'a' MINÚSCULO e a terceira seja 'r' MINÚSCULO
SELECT *
FROM Nomes
WHERE Nome LIKE '[M][a][r]%'

-- RETORNA AS LINHAS ONDE A PRIMEIRA LETRA SEJA 'M' OU 'm',  E A SEGUNDA SEJA 'A' ou 'a'
SELECT *
FROM Nomes
WHERE Nome LIKE '[Mm][Aa]%'
