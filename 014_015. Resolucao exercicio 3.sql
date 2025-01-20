-- 015. Resolução do exercício 3
-- Em cada uma das 3 tabelas, adicione os seguintes valores

USE Exercicios

-- TABELA dCliente

INSERT INTO dCliente(ID_Cliente, Nome_Cliente, Data_Nascimento)
VALUES
	(1, 'André Martins', '12/02/1989'),
	(2, 'Bárbara Campos', '07/05/1992'),
	(3, 'Carol Freitas', '23/04/1985'),
	(4, 'Diego Cardoso', '11/10/1994'),
	(5, 'Eduardo Pereira', '09/11/1988'),
	(6, 'Fabiana Silva','02/09/1989'),
	(7, 'Gustavo Barbosa', '27/06/1993'),
	(8, 'Helen Viana', '11/02/1990')

SELECT * FROM dCliente

-- TABELA dGerente
INSERT INTO dGerente(ID_Gerente, Nome_Gerente, Data_Contratação, Salario)
VALUES
	(1, 'Lucas Sampaio'	 , '21/03/2015', 6700 ),
	(2, 'Mariana Padilha', '10/01/2011', 9900 ),
	(3, 'Nathália Santos', '03/10/2018', 7200 ),
	(4, 'Otávio Costa'  , '18/04/2017', 11000)

SELECT * FROM dGerente

-- TABELA fContratos
INSERT INTO fContratos(ID_Contrato, Data_Assinatura, ID_Cliente, ID_Gerente, Valor_Contrato)
VALUES
	(1, '12/01/2019', 8 , 1, 23000),
	(2, '10/02/2019', 3 , 2, 15500),
	(3, '07/03/2019', 7 , 2, 6500),
	(4, '15/03/2019', 1 , 3, 33000),
	(5, '21/03/2019', 5 , 4, 11100),
	(6, '23/03/2019', 4 , 2, 5500),
	(7, '28/03/2019', 9 , 3, 55000),
	(8, '04/04/2019', 2 , 1, 31000),
	(9, '05/04/2019', 10, 4, 3400),
	(10,'05/04/2019', 6 , 2, 9200)

SELECT * FROM fContratos
