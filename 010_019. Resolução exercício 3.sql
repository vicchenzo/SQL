/*
3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de usuários. Em resumo, esses dados são:
- Nome do usuário
- Data de nascimento
- Quantidade de pets que aquele usuário possui
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este 
usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e 
num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente.
O resultado final a ser alcançado é mostrado no print abaixo:

>>>Meu nome é André, nasci em 10/02/1998 e tenho 2 pets<<<
*/

DECLARE
	@varNome AS VARCHAR(50) = 'André', 
	@varDataNascimento AS DATETIME = '10/02/1988',
	@varNumPets AS INT = 2

SELECT 'Meu nome é ' + CAST(@varNome AS VARCHAR(50))+ ' nasci em ' +CAST(@varDataNascimento AS VARCHAR(30)) + ' e tenho ' + CAST(@varNumPets AS VARCHAR(30))+ ' pets'

SELECT 'Meu nome é ' + CAST(@varNome AS VARCHAR(50))+ ' nasci em' +FORMAT(@varDataNascimento, 'dd/MM/yyyy') + ' e tenho ' + CAST(@varNumPets AS VARCHAR(30))+ ' pets'
-- Com FORMAT eu consigo específicar o qual Formato que eu quero que ele me mostre
