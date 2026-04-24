Proceso ejercicio11
	//Juan Diego Rios Giraldo
	// Hacer un algoritmo que lea dos números enteros A y B y  muestre su diferencia.
	
	//DEFINICIÓN DE VARIABLES 
	
	Definir A Como Real;
	Definir B Como Real;
	Definir diferencia Como Real;
	Definir mayor Como Real;
	Definir menor Como Real;
	
	//ENTRADA
	
	Escribir "Ingrese el valor del número A";
	Leer A;
	Escribir "Ingrese el valor del número B";
	Leer B;
	
	//PROCESO 
	
	si A > B Entonces
		mayor <- A;
		menor <- B;
	SiNo
		mayor <- B;
		menor <- A;
	FinSi
	
	diferencia <- mayor-menor;
	
	//SALIDA
	
	Escribir "La diferencia de el número A y el número B es ",diferencia;
	
FinProceso