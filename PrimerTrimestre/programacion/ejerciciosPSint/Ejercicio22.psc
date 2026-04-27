Proceso Ejercicio22
	//Juan Diego Rios Giraldo
	//Pedir dos números y mostrarlos ordenados de mayor a menor
	
	// Definición de variables
	
    Definir num1, num2 Como Real;
    
    // Entrada
	
    Escribir "Ingrese un número 1";
    Leer num1;
    Escribir "Ingrese su número 2";
    Leer num2;
    
    // Proceso y Salida
	
    Si (num1 > num2) Entonces
        Escribir "El orden de mayor a menor es: ",num1," y ",num2;
    SiNo
        Si (num2 > num1) Entonces
            Escribir "El orden de mayor a menor es: ", num2, " y ", num1;
        SiNo
            Escribir "Sus números son iguales: ",num1," y ",num2;
        FinSi
    FinSi
	
FinAlgoritmo