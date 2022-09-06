
!falarpara.
/* Uso do unachieve
+!falarpara: true <-
	.print("por favor, ligue a luz");
	.send(bob,achieve,ligar(ok)).
	
	
+luz(ligada)<-
	.send(bob,unachieve,ligar(ok)). */ 

//uso do achieve	
+!falarpara: true <-
	.print("por favor, ligue a luz");
	.send(bob,achieve,luz(ligada)).
