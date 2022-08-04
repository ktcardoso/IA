// Agent lumos in project Lumos.mas2j

lumos(luz).
+lumos(luz) : true 
<- .print("Luz acessa, vou apagar");
-~lumos(luz);
+~lumos(luz);
.print("Nox").

