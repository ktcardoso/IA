// Agent robo in project questao6.mas2j



//6) Agente rob? que anda aleatoriamente e recarrega bateria quando estiver com 
//a energia baixa.

/* Initial beliefs and rules */



bateria(15).
/* Initial goals */


!andar.

//!recarregar



/* Plans */



+!andar : bateria(B) & B >= 3 <- 

	.print("andando...");
	-+bateria(B-1);
	.print("energia gasta:", B);
	!andar.

+!andar: bateria(B) <-

	.print("Energia baixa, indo recarregar");
	!recarregar.
	
+!recarregar: bateria(B) & B <=15 <-
	.print("Recarregando...", B);
	-+bateria(B+1);
	!recarregar. 
	
-!recarregar: true <-
	.print("Recarregado").

