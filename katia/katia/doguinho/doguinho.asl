// Agent doguinho in project doguinho.mas2j


/*
//aqui eu declaro a cren�a de que a Leyce � um cachorro
cachorro(leycce).

!latir.   //declaro o plano latir

+!latir : cachorro(leycce) <- .print("Au Au").  
//aqui ele identifica que � a leycce e j� aciona o auau, pois ela est� declarada
// como cren�a

//situa��o contr�ria, se ela n�o for a leycce. No caso aqui n�o entra,
//pois ela j� foi reconhecida l� em cima 
-!latir <-  
	.print("snif snif");
	!snif.
	
+!snif <-
	.print("Bob?");
	?cachorro(X);
	.print(X).
	
+?cachorro(X) <-
	X=fofa;
	+cachorro(X).
*/	
	
//aqui � com um cachorro desconhecido
//n�o vai latir, a fofa ser� encontrada

//cachorro(leycce).

!latir.   //declaro o plano latir


+!latir : cachorro(desconhecido) <- .print("Au Au").


-!latir <-  
	.print("snif snif");
	!snif.
	
+!snif <-
	.print("Bob?");
	?cachorro(X);
	.print(X).
	
+?cachorro(X) <-
	X=fofa;
	+cachorro(X). 
	
	
/*Anota��es
- � para planos
~ � para cren�a
!! � paa for�ar finalizar um plano e depois chamar ele 

*/
