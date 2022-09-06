// Agent relogio in project despertador.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true <-
	.print("relogio em execucao");
	//pega hora do sistema
	.time(Hora,Min,Seg);
	.print("Hora:", Hora, ":", Min, ":", Seg);
	++hora(Hora);
	!despertador.
+!despertador: hora(H) & H>=22 <- .print("Estudar").
+!despertado: hora(H) & H>=7 & H<=8 <- .print("Acordar").
+!despertador: hora(H) & H>22 <- .print("Dormir").
-!despertador: true <- .print("Plano executado").
