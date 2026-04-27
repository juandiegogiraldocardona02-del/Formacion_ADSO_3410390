Proceso Ejercicio19
	//Juan Diego Rios Giraldo 
	//Pedir dos números y decir si uno es múltiplo del otro
	
	// DEFINICION DE VARIABLES
	Definir num1 Como Real;
	Definir num2 Como Real;
	
	// ENTRADA
	
	Escribir "Ingrese el numero 1";
	Leer num1;
	Escribir "Ingrese el numero 2";
	Leer num2;
	
	// PROCESOS
	
	si  num1 % num2 == 0 Entonces
		Escribir "El numero ",num1," es multiplo de ",num2;
	SiNo 
		Escribir "El numero ",num1," no es multiplo del numero ",num2;
	FinSi
	
FinProceso