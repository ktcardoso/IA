// Agent a1 in project Pensa.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/*contagem crescente
cont(0).         //isso é uma crença
!start.         //isso é um plano
!pensando.

+!start : true <- .print("Iniciei.").

+!pensando: cont(I) & I<=10
<-
.print("Pensando ",I);
-+cont(I+1);
!pensando.

+!pensando
<-
.print("Sem eventos para executar, terminei"). 

*/

//contagem decrescente
cont(10).
!start.

!pensando.

+!start : true <- .print("Iniciei.").

+!pensando: cont(I) & I>=0
<-
.print("Pensando ",I);
-+cont(I-1);
!pensando.

+!pensando
<-
.print("Sem eventos para executar, terminei"). 


