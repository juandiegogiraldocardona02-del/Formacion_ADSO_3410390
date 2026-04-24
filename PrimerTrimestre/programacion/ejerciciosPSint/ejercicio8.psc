Proceso ejercicio8
	//Juan Diego Rios Giraldo
	//Hacer un algoritmo que lea el nombre de una persona y número de horas que  estudia en la semana.
	
	//DEFINICIÓN DE VARIABLES
	
	Definir nombre como cadena;
	Definir enSemana como Real;
	Definir diaActual Como Entero;
	Definir bucle Como Entero;
	Definir totalHoras Como Real;
	enSemana <- 0;
	diaActual <- 0;
	bucle <- 1;
	totalHoras <- 0;
	
	//ENTRADA Y PROCESO 
	
	Escribir "Ingrese su nombre";
	leer nombre;
	para bucle <- 1 Hasta 7 Hacer
		Escribir "Ingrese el valor de horas que se estudio el dia ",bucle;
		Leer diaActual;
		totalHoras <- totalHoras + diaActual;
		enSemana <- enSemana +1;
		
	FinPara
	
	//SALIDA
	
	Escribir "El aprendiz ",nombre,"," , " estudio un total de ",totalHoras," horas en el transcurso de los 7 dias de la semana";
	
FinProceso