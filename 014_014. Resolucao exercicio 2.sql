-- Resolução exercíio 2:
-- No banco de dados criado no exercício anterior, crie 3 tabelas, cada uma contendo as seguintes colunas:
USE Exercicios

-- TABELA 1: dCliente
CREATE TABLE dCliente(
	ID_Cliente INT,
	Nome_Cliente VARCHAR(100),
	Data_Nascimento DATETIME
)

SELECT * FROM dCliente

-- TABELA 2: dGerente
CREATE TABLE dGerente(
	ID_Gerente INT,
	Nome_Gerente VARCHAR(100),
	Data_Contratação DATETIME,
	Salario FLOAT
)

SELECT * FROM dGerente

-- TABELA 3: fContratos
CREATE TABLE fContratos(
	ID_Contrato INT,
	Data_Assinatura DATETIME,
	ID_Cliente INT,
	ID_Gerente INT,
	Valor_Contrato FLOAT
)

SELECT * FROM fContratos
