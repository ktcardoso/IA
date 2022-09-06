// Agent monitor in project Initials.mas2j


/* 
1) Crie um agente monitor, esse agente tem um plano para imprimir uma 
mensagem "Ol�, Tudo bem?".

2) No agente monitor acima adicione que ele ir� imprimir a mensagem apenas se
ele tiver a cren�a que n�o � segunda.

3) Adicione a cren�a que n�o � segunda.*/

~dia(segunda). //cren�a de que ele b�o ter� a segunda
//para negar uma cren�a se usa ~

/* Initial goals */
!bomdia.
!start. //plano

/* Plans */
+!bomdia: true <-
.print("ola, tudo bem ?").

+!start: dia(segunda) <-
	.print("hoje e segunda").

//este funciona mais como nega��o da cren�a	
+!start: ~dia(segunda) <-	
	.print("hoje nao e segunda").

/* mesma coisa do de cima, por�m funciona como ponto de parada
-!start: true <-	
	.print("hoje nao e segunda"). 
*/

