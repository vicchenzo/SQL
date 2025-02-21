/* Exercício 3.
A empresa Contoso criou um programa de bonificação chamado “Todos por 1”. Este 
programa consistia no seguinte: 1 funcionário seria escolhido ao final do ano como o funcionário 
destaque, só que a bonificação seria recebida por todos da área daquele funcionário em 
particular. 

O objetivo desse programa seria o de incentivar a colaboração coletiva entre os 
funcionários de uma mesma área. Desta forma, o funcionário destaque beneficiaria não só a si,
mas também a todos os colegas de sua área.

Ao final do ano, o funcionário escolhido como destaque foi o Miguel Severino. Isso significa que 
todos os funcionários da área do Miguel seriam beneficiados com o programa.

O seu objetivo é realizar uma consulta à tabela DimEmployee e retornar todos os funcionários 
da área “vencedora” para que o setor Financeiro possa realizar os pagamentos das bonificações. */

SELECT * FROM DimEmployee WHERE FirstName = 'Miguel' AND LastName = 'Severino' -- DepartamentName: Production

SELECT * FROM DimEmployee 
WHERE DepartmentName = (
				SELECT DepartmentName 
				FROM DimEmployee
				WHERE FirstName = 'Miguel' 
				AND LastName = 'Severino'
				)
