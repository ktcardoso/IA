// Agent doguinho in project doguinho.mas2j


/*
//aqui eu declaro a crença de que a Leyce é um cachorro
cachorro(leycce).

!latir.   //declaro o plano latir

+!latir : cachorro(leycce) <- .print("Au Au").  
//aqui ele identifica que é a leycce e já aciona o auau, pois ela está declarada
// como crença

//situação contrária, se ela não for a leycce. No caso aqui não entra,
//pois ela já foi reconhecida lá em cima 
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
	
//aqui é com um cachorro desconhecido
//não vai latir, a fofa será encontrada

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
	
	
/*Anotações
- é para planos
~ é para crença
!! é paa forçar finalizar um plano e depois chamar ele 

*/
