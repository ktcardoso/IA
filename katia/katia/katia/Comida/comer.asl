// Agent comer in project Comida.mas2j

//crenças iniciais
fome.
comida(100).
estomago(0).

!comer.
+!comer: fome & comida(C) & estomago(E) & E<=50 <-
	.print("\nComendo..");
	-+comida(C-1);
	-+estomago(E+1); 
	.print("Comida:",C);
	.print("Estomago:",E);
	!comer.
	
+!comer: estomago(E) & E>50 <-
	.print("Estou satisfeito!");
	-fome.
