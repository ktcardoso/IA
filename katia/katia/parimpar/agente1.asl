// Agent agente1 in project parimpar.mas2j

/* identificar impar par
!print_number(27).
+!print_number(N)
<-
	!comparation(N,F);
	.print(N,"=",F).
	
+!comparation(N,F) : ((N mod 2) == 0 )<- F=par.  //: � como se fosse se
+!comparation(N,F) : ((N mod 2)  > 0) <- F=impar.
*/

// identificar divisibilidade por 3 e 6, simultaneamente
!print_number(5).      //coloca um plano
+!print_number(N)    // coloca o N como variavel = 15 (tem que usar o mesmo nome)
<-
	!comparation(N,F);   //chama a fun��o debaixo
	.print(N,"=",F).
	
+!comparation(N,F) : (((N mod 3) == 0) & (N mod 6)==0)<- F=edivisivel.  //: � como se fosse se
+!comparation(N,F) : true <- F=naoedivisivel.
