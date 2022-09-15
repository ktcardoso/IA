// Agent garrafa in project questao4.mas2j


//tentei fazer deum modo como o da comida de ir decrementando, mas deu
//muitos problemas ao chamar dois planos ao mesmo tempo, então fiz desse jeito
//mais básico e que talvez por o agente já está cansado ele tá meio bugado

quantidade(0).

!tomarCafe.
//!saberEstado.

+!tomarCafe: quantidade(Q) & Q>=0 <-
	.print("Opa, vamo tomar um cafezin");
	.print("Verificando a garrafa...");
	!analiseEstado.

+!analiseEstado: quantidade(1) <-
.print("bora fazer um cafezinho, porque o daqui acabou").

+!analiseEstado: quantidade(2) |quantidade(3)|quantidade(4) <-
.print("ta acabando, mas ainda tem um pouco, logo cafezin on").

+!analiseEstado: quantidade(5) <-
.print("esta na metade, cafezin on").

+!analiseEstado: quantidade(6) |quantidade(7) |quantidade(8)|quantidade(9) <-
.print("tem bastante, cafezin on").

+!analiseEstado: quantidade(10) <-
.print("cheia, vamos tomar cafezin!").

-!analiseEstado: true  <-
.print("cafezin off, melhor procurar outra garrafa").









/*
beber.


!tomarCafe.
//!saberEstado.

+!tomarCafe: quantidade(Q) & Q>=0 <-
	.print("Tomando cafe...");
	-+quantidade(Q-1);
	!analiseEstado;
	!tomarCafe.
*/


/*+!tomarCafe: quantidade(Q) & Q>=0 <-
	
	//.print("bora tomar um cafezin");
	-+quantidade(Q-1);
	//Quantidade = Q;
	.print("tomando.." ,Q);
	//!estado;
	!tomarCafe. */
/*	
-!tomarCafe: true <-
	.print("cafezin tomado"). 

+!analiseEstado: quantidade(10) <-
.print("cheissima").

+!analiseEstado: quantidade==5 <-
.print("está na metade").

+!analiseEstado: quantidade==3 <-
.print("esta acababando, mas ainda tem").


+!analiseEstado: quantidade == 1 <-
.print("bora fazer um cafezinho, porque o daqui acabou").



*/

