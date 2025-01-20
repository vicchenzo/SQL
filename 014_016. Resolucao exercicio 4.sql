-- 016. Resolução exercício 4
--Novos dados deverão ser adicionados nas tabelas dCliente, dGerente e fContratos. Fique livre para adicionar uma nova linha em cada tabela contendo, respectivamente, 

USE Exercicios
-- 1. Um novo cliente (id cliente, nome e data de nascimento)
SELECT * FROM dCliente

INSERT INTO dCliente(ID_Cliente, Nome_Cliente, Data_Nascimento)
VALUES
	(9, 'Ruthielen Lagdem', '24/10/1991')

-- 2. Um novo gerente (id gerente, nome, data de contratação e salário)
SELECT * FROM dGerente

INSERT INTO dGerente(ID_Gerente, Nome_Gerente, Data_Contratação, Salario)
VALUES
	(5, 'Luis Perez', '22/05/2024', 15000)

-- 3. Um novo contrato (id, data assinatura, id cliente, id gerente, valor do contrato)
SELECT * FROM fContratos 

INSERT INTO fContratos(ID_Contrato, Data_Assinatura, ID_Cliente, ID_Gerente, Valor_Contrato)
VALUES
	(11, '22/09/2019', 9, 5, 100000)
