// Agent salario in project salario.mas2j

/* Initial beliefs and rules */

/* Initial goals */

salario(5000).

!start.

/* Plans */

+!start : salario(5000)<-.print("meta").

