// Agent paranoico in project Paranoico_claustofobico.mas2j

aberta(porta).   //cren�a inicial

+aberta(porta): true         // se a porta esta realmente aberta
<-.print("Porta Aberta, vou fechar !");  
-aberta(porta);            //tira a cren�a
//+fechada(porta);           //adiciona uma nova
+~aberta(porta);
.print("Porta Fechada").

