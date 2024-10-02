-- AULA 1.
-- LEN e DATA LENGHT: Descubra a quantidade de caracteres da de uma palavra 
-- Descubra a quantidade de caracteres da palavra SQL HASHTAG

SELECT 
	LEN('SQL Hashtag') AS 'LEN',
	DATALENGTH('SQL Hashtag') AS 'DATALENGTH' --DATALENGHT TAMBÉM CONTA OS ESPAÇOS ADICIONAIS
