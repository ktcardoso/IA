// Agent kid in project questao5.mas2j

//5) Crie um agente criança, onde esta sentirá fome, sede e sono. 
//Trate cada situação, utilizando mensagens ao acabar.

/* Initial beliefs and rules */

/* Initial goals */

fome.
sede.
sono.
comida(8).  //3 bolachas disponiveis
agua(5).   //5 litros
horasADormir(7).
estomago(0).
rim(0).
disposicao(0).


!comer.
!beber.
!dormir.




+!comer: fome & comida(C) & estomago(E) & E<=5 <-   
	.print("Comendo..");
	-+comida(C-1);
	-+estomago(E+1); 
	.print("Quantidade de Comida:",C);
	.print("  Quantidade de comida no Estomago:",E);
	.print("   ...............................COMIDA \n");
	!comer.
	
+!comer: estomago(E) & E>5 <-
	.print("................................................Estou satisfeito!");
	-fome.
	

+!beber: sede & agua(A) & rim(R) & R<=4 <-     
	.print("Bebendo..");
	-+agua(A-1);
	-+rim(R+1); 
	.print("Quantidade de agua:",A);
	.print("  Quantidade de agua no rim:",R);
	.print("   ...............................SEDE \n");
	!beber.
	
+!beber: rim(R) & R>4 <-
	.print(".......................................................Abastecido");
	-sede. 

	
+!dormir: sono & horasADormir(H) & disposicao(D) & D<=5 <-     
	.print("Dormindo...");
	-+horasADormir(H-1);
	-+disposicao(D+1); 
	.print("Dormindo por ",H, " horas");
	.print("  Disposicao:",D);
	.print("   ...............................SONO \n");
	!dormir.
	
+!dormir: disposicao(D) & D>5 <-
	.print(".........................................Descansado mas nem tanto");
	-sono.


