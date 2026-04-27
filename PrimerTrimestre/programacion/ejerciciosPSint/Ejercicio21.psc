Proceso Ejercicio21
	//Juan Diego Rios Giraldo
	//Pedir dos números y decir cuál es el mayor o si son iguales
	
	// DEFINICION DE VARIABLES
	
	Definir num1 Como Real;
	Definir num2 Como Real;
	
	// ENTRADA
	
	Escribir "Ingrese el numero 1";
	Leer num1;
	Escribir "Ingrese el numero 2";
	Leer num2;
	
	// PROCESOS
	
	si (num1 > num2) Entonces
		Escribir "El numero ",num1," es mayor que el ",num2;
	SiNo
		si (num1 < num2) Entonces
			Escribir "El numero ",num2," es mayor que el",num1;
		SiNo
			Escribir "Los numeros tienen el mismo valor";
		FinSi
	FinSi

FinProceso