Proceso ejercicio3
	//Juan Diego Rios Giraldo
	//Hacer un algoritmo que declare una variable para guardar el promedio del semestre, otra para guardar 
	//el nombre de un estudiante y otra para guardar el número de notas perdidas. 
	
	//DEFINICIÓN DE VARIABLES
	
	Definir promSemestre Como Real;
	Definir nombreEstudiante como cadena;
	Definir notasPerdidas Como Entero;
	Definir sumaNotas Como Real;
	Definir notaActual Como Real;
	definir siclo Como Real;
	sumaNotas <- 0;
	siclo <- 1;
	notasPerdidas <- 0;
	
	//ENTRADA Y PROCESO 
	
	Escribir "Ingresa el nombre del estudiante";
	Leer nombreEstudiante;
	para siclo <- 1 Hasta 5 Hacer
		Escribir "Ingrese la nota periodo ",siclo;
		leer notaActual;
		si  notaActual >= 3 Entonces
			Escribir "nota ",siclo, " Aprovada";
			sumaNotas <- sumaNotas + notaActual;
		SiNo
			Escribir "nota ",siclo, " Perdida";
			notasPerdidas <- notasPerdidas + 1;
			sumaNotas <- sumaNotas + notaActual;
		FinSi
	FinPara
	promSemestre <- sumaNotas/5;
	
	//SALIDA
	
	Escribir "El estudiante ",nombreEstudiante," ha perdido un total de ",notasPerdidas," materias" , " y tiene un promedio de ",promSemestre;

FinProceso