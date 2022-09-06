// Agent alice in project alibob.mas2j

!falarpara.

/* aqui com askOne, ele pega apenas uma resposta por vez do bob

	+!falarpara: true <-
	.print("Qual seu nome");
	.send(bob,askOne,nome(Nome),Reply);
	+Reply. 
	
*/

/* Com AskAll ele pega as duas de uma vez*/

+!falarpara: true <-
	.print("Qual seu nome");
	.send(bob,askAll,nome(Nome)).
	
+nome(bob): nome(X) & (X=bob) <- 
	.print("Meu nome é Bob").

+nome(alice): 
	.print("Meu nome é Alice").
	
//mas qual é a diferença entre eles?
