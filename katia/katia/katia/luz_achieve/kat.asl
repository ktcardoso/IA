// Agent kat in project luz ligada achieve.mas2j
!falarpara.

+!falarpara: true <-
	.print("por favor, ligue a luz");
	.send(bob,achieve,ligar(ok)).
	
	
+luz(ligada)<-
	.send(bob,unachieve,ligar(ok)).
