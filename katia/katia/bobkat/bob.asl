// Agent bob in project bobkat.mas2j

/* Initial beliefs and rules */

/*  

+kate(linda) <-
+~katia(linda);
.print("Nao, voce nao e");
.send(kate, tell, ~kate(linda)).

*/


// nesse aqui ele tem o objetivo que já veio da Kate
+!luz(ligada)<-
.print("Luz Ligada!");
.send(kate,tell,luz(ligada));
!luz(ligada).
