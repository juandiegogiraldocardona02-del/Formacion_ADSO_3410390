Algoritmo ejercicio25
	
	//Juan Diego Rios Giraldo
	// Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 ? 2,9), Suficiente (3 ? 4,5) y Bien (4,6 ? 5) 
	
	//DEFINICIÓN DE VARIALES
	
	Definir insuficiente Como Real;
	Definir suficiente como real;
	Definir bien Como Real;
	Definir nota Como Real;
	
	//ENTRADA
	
	Escribir "Ingrese su nota";
	leer nota;
	
	si nota <= 2.9 Entonces
		Escribir "Su nota es insuficiente";
	FinSi
	si nota > 2.9 y nota < 4.6 Entonces
		Escribir "Su nota es sufuciente";
	FinSi
	si nota <= 5 y nota > 4.5 Entonces
		Escribir "Su nota esta bien";
	FinSi
	
FinAlgoritmo
