// Agent claustofobico in project Paranoico_claustofobico.mas2j

// este abaixo foi realizado utilizando as palavras aberto e fechado
//mas o ideial � fazer com apenas uma palavra
//e depois ir negando ou afirmando ela, como no exemplo de baixo

/* fechada(porta).  //isto � uma cren�a
+fechada(porta):true  
<- .print("Porta Fechada. Vou abrir!");
-fechada(porta);  //removendo a cren�a
+aberta(porta);
.print("Porta Aberta"). */


~aberta(porta).  //isto � uma cren�a
+~aberta(porta):true  
<- .print("Porta Fechada. Vou abrir!");
-~aberta(porta);  //aqui indica que ela est� fechada, pois o ~ nega a abertura
+aberta(porta);
.print("Porta Aberta").
