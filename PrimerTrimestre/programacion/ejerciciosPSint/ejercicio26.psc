Algoritmo ejercicio26
	
	//Juan Diego Rios Giraldo
	// Pedir una nota numérica entera entre 0 y 10, y mostrar dicha nota de la forma: cero, uno, dos, tres...
	
	//DEFINICION DE VARIABLES
	
	Definir nota Como Entero;
	Definir lectura como cadena;
	
	//ENTRADA
	
	Escribir "Ingrese una nota entre 0 y 10";
	Leer nota;
	
	//PROCESO 
	
	Segun nota hacer
		0:Escribir "Cero";
		1:Escribir "Uno";
		2:Escribir "Dos";
		3:Escribir "Tres";
		4:Escribir "Cuatro";
		5:Escribir "Cinco";
		6:Escribir "Seis";
		7:Escribir "Siete";
		8:Escribir "Ocho";
		9:Escribir "Nueve";
		10:Escribir "Diez";
		De Otro Modo:
			Escribir "Numero no valido Ingrese un numero valido";
	FinSegun
	
FinAlgoritmo