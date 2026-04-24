Proceso ejercicio12
	//Juan Diego Rios Giraldo 
	//Hacer un algoritmo que lea el nombre de una persona, el valor de la hora trabajada y el número de 
	//horas que trabajó.  Se debe mostrar el nombre y el pago de la persona. 
	
	//DEFINICIÓN DE VARIABLES
	
	Definir horaDia Como Real;
	Definir nombre como cadena;
	Definir valorHora Como Real;
	Definir pago Como Real;
	valorHora <- 11500;
	
	//ENTRADA
	
	Escribir "Ingrese su nombre";
	Leer nombre;
	Escribir "Ingrese el total de horas trabajadas";
	Leer horaDia;
	
	//PROCESO 
	
	pago <- valorHora*horaDia;
	
	//SALIDA
	
	Escribir "El pago de ",nombre," es de ",pago;
	
FinProceso