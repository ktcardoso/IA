// Agent tabuada in project tabuada.mas2j

/*!imprime_fatorial(4).  


+!imprime_fatorial(N)
<-
	!fatorial(N,F);
	.print("Fatorial de ",N," = ",F).

+!fatorial (N,1) : N==0.

+!fatorial (N,F): N>0
<-
	!fatorial(N-1,F1);
	F = F1*N. */

/*
//com contador
	
cont(0).      //crença de que começa do zero e vai até determinado numero	
!imprime_tabuada(4).   //esse é o numero da tabuada
+!imprime_tabuada(N)  : cont(I) & I<=10
<-
	.print(N, "x" ,I, "=", N*I );
	-+cont(I+1);
	!imprime_tabuada(N).
*/

//talvez não dê tempo de finalizar, mas tente fazer com recursividade
!imprime_tabuada(4,0).  
+!imprime_tabuada(N,T) : T<=10         //T=X
<-
	!tabuada(N,T+1);
	.print("Tabuada de ",N," x ",T+1,"=",(T+1)*N).

+!tabuada (N,T) : print("Sem Eventos").
/*
+!tabuada(N,F): N>0
<-
	!tabuada(N-1,F1);
	F = F1*N. */

