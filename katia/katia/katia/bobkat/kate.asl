// Agent kate in project bobkat.mas2j

/* Initial beliefs and rules */

/* 

!falarpara.

 

+!falarpara : true <- 
	.print("Ola Bob, eu sou linda !!!");
	.send(bob,tell,kate(linda)).
	+~kate(linda) [source(bob)] <- //esse source � para saber quem est� mandando
	.print("Deixa baixo");
	.send(bob,untell,kate(linda)). 
*/

!falarpara.
+!falarpara : true <-
.print("Por favor, ligue a luz!!!");
.send(bob,achieve,luz(ligada)).

+luz(ligada) <-
.print("thanks").
