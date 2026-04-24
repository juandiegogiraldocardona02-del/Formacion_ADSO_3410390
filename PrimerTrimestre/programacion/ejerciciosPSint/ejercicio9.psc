Proceso ejercicio9
	//Juan Diego Rios Giraldo
	//Hacer un algoritmo que lea el nombre de un estudiante, la cantidad de materias perdidas y la cantidad 
	//de materias ganadas.
	
	//DEFINICIÓN DE VARIABLES
	
	Definir nombreEstudiante como cadena;
	Definir notasPerdidas Como Entero;
	Definir notasGanadas Como Entero;
	Definir notaActual Como Real;
	definir siclo Como Real;
	siclo <- 1;
	notasPerdidas <- 0;
	notasGanadas <- 0;
	
	//ENTRADA Y PROCESO 
	
	Escribir "Ingresa el nombre del estudiante";
	Leer nombreEstudiante;
	para siclo <- 1 Hasta 3 Hacer
		Escribir "Ingrese la nota ",siclo;
		leer notaActual;
		si  notaActual >= 3 Entonces
			Escribir "nota ",siclo, " Aprovada";
			notasGanadas <- notasGanadas + 1;
		SiNo
			Escribir "nota ",siclo, " Perdida";
			notasPerdidas <- notasPerdidas + 1;
		FinSi
	FinPara
	
	//SALIDA
	
	Escribir "El estudiante ",nombreEstudiante," ha ganado un total de ",notasGanadas," materias y a perdido ",notasPerdidas;
	
FinProceso