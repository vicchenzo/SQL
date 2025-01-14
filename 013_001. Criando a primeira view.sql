-- VIEW:
-- É uma exibição, uma tabela virtual criada a partir de uma consulta a uma ou mais tabelas [ou até mesmo de outras VIEWS] no banco de dados
-- Ela contém linhas e colunas, podemos utilzar JOINS, WHERE e outras funções
-- Sempre mostra resultados atualizados dos dados, ou seja, uma vez criada uma VIEW, caso haja alterações no BD, as VIEWS são atualizadas automaticamentes.
-- Caso o servidor seja desligado [ou SSMS fechado] a VIEW continua armazenada no sistema

-- POR QUE CRIAR UMA VIEW?
-- 1. REUTILIZAÇÃO: Podemos armazenar o resultado dessa consulta em uma tabela virtual  e sempre que necessário podemos consultar essa VIEW sem a necessidade de criar um novo SELECT
-- 2. SEGURANÇA: Ao criar uma VIEW estamos ocultando linhas ou colunas da tabela original do BD. Desta forma, apenas algumas informações relevantes serão visualizadas na VIEW
-- 3. GANHO DE TEMPO: Quando criamos uma VIEW estamos poupando o tempo de recriar SELECTs, o que aumenta nossa produtividade

-- NA PRÁTICA: Uma vez criada uma VIEW  fica salva em EXIBIÇÕES do BD, para visualizar basta utilizar o comando SELECT

-- CRIANDO A PRIMEIRA VIEW
-- QUANDO FALAMOS EM VIEWS, EXISTEM TRÊS AÇÕES ENVOLVIDAS:
-- 1. Criar uma VIEW
-- 2. Alterar uma VIEW
-- 3. Exclusão de uma VIEW

-- PARA CADA UMA DESSAS AÇÕES, TEMOS UM COMANDO ASSOCIADO:
-- 1. CREATE VIEW
-- 2. ALTER VIEW
-- 3. DROP VIEW

-- 1. CREATE VIEW
-- A. Crie uma VIEW contendo as seguintes informações da tabela DimCustomer: FirstName, EmailAddress, BirthDate. Chame essa VIEW de vwClientes

CREATE VIEW vwClientes AS
SELECT
	Firstname AS 'Nome',
	EmailAddress AS 'Email',
	BirthDate AS 'Nascimento'
FROM
	DimCustomer
GO

SELECT * FROM vwClientes

-- CRIAMOS A VIEW dentro do nosso BD Contoso
-- A VIEW fica guarda dentro do BD na pasta EXIBIÇÕES
-- Caso não apareça quando recém criada basta clicar no botão de ATUALIZAR

-- B. Crie uma VIEW contendo  as seguintes informações da tabela DimProduct: ProductKey; ProductName; ProductSubcategoryKey; BrandName; UnitPrice. Chame essa VIEW de vwProdutos
GO
CREATE VIEW vwProdutos AS
SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Produto',
	ProductSubcategoryKey AS 'ID Subcategoria',
	BrandName AS 'Marca',
	UnitPrice AS 'Preço'
FROM 
	DimProduct
GO

-- BASTA SELECIONARMOS A VIEW USANDO UM SELECT E AUTOMATICAMENTE TRAZ PRA MIM AS INFORMAÇÕES
SELECT * FROM vwProdutos
