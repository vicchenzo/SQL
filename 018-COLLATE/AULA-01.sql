/*
	ONDE CI: CASE INSENSITIVE (Não diferencia maiúsculas de minúsculas)
	ONDE AS: ACCENT SENSITIVE (Sensível ao sotaque) // DIFERENCIA PALAVRAS PELA ACENTUAÇÃO

*/

SELECT SERVERPROPERTY('COLLATION')

/*
	Em Propriedades conseguimos visualizar COLLATION configurado.
	Nós podemos também especificar o COLLATION do Banco de Dados no momento da sua criação.
*/

CREATE DATABASE BD_Collation
COLLATE Latin1_General_CS_AS

-- ALTERANDO BANCO DE DADOS PARA PROPRIEDADE EM DEFAULT.
ALTER DATABASE BD_Collation COLLATE Latin1_General_CI_AS

SELECT DATABASEPROPERTYEX('BD_Collation', 'colation')

/*
	3. A Nível de Coluna/Tabela	
	Por padrão, uma nova coluna de tipo VARCHAR herda o COLLATION do banco de dados, a menos que voce especifique o COLLATION explicitamente ao criar a tabela.
	Para criar uma coluna com COLLATION diferente, voce pode especificar o argumento usando um comando COLLATE SQL.
*/

USE BD_Collation

CREATE TABLE Nomes (
ID INT,
Nome VARCHAR(100) COLLATE Latin1_General_CS_AS)

/*
	Podemos ver o COLLATION de cada coluna da tabela usando o comando abaixo.
*/

sp_help Nomes


