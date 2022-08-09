// Agent agentefatorial in project fatorial.mas2j

/* Initial beliefs and rules */

/* Initial goals */
!imprime_fatorial(5).

/* Plans */

+!imprime_fatorial(N)
<-
	!fatorial(N,F);
	.print("Fatorial de ",N," = ",F).

+!fatorial (N,1) : N==0.

+!fatorial (N,F): N>0
<-
	!fatorial(N-1,F1);
	F = F1*N.


