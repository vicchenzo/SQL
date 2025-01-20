-- 017. Resolução exercício 5
-- O contrato de ID igual a 4 foi registrado com alguns erros na tabela fContratos. Faça uma alteração na tabela atualizando os seguintes valores
-- Data_de_Assinatura: 17/03/2019
-- ID_Gerente: 2
-- Valor_do_Contrato: 3350

USE Exercicios

SELECT * FROM fContratos

UPDATE fContratos
SET Data_Assinatura = '17/03/2019',
	ID_Gerente = 2,
	Valor_Contrato = 33500
WHERE ID_Contrato= 4

