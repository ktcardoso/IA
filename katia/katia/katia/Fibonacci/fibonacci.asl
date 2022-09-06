// Agent fibonacci in project Fibonacci.mas2j



/* Initial beliefs and rules */


/*Agente Fibonacci.asl*/
!print_fibonacci(2).
+!print_fibonacci(N)
<- 
	!fibonacci(N,F);
	.print(N, " n�mero da s�rie de Fibonacci � ",F).
+!fibonacci(N,1) : N == 1.
+!fibonacci(N,1) : N == 2.
+!fibonacci(N,F) : N > 2
<- 
	!fibonacci(N-1,F1);
	!fibonacci(N-2,F2); 
	F = F1 + F2. 
