Algoritmo ejercicio23
	
	//Juan Diego Rios Giraldo
	//Pedir tres números y mostrarlos ordenados de mayor a menor.
	
	//DEFINICION DE VARIABLES 
	
	Definir num1,num2,num3 Como Real;
	
	//ENTRADA
	
	Escribir "Ingrese su numero 1";
	Leer num1;
	Escribir "Ingrese su numero 2";
	Leer num2;
	Escribir "Ingrese su numero 3";
	Leer num3;
	
	//PROCESO 
	
	si num1 > num2 y num2 > num3 Entonces
		Escribir "El orden de mayor a menor es ",num1,",",num2,",",num3;
	FinSi
	si num2 > num1 y num1 > num3 Entonces
		Escribir "El orden de mayor a menor es ",num2,",",num1,",",num3;
	FinSi
	si num3 > num1 y num1 > num2 Entonces
		Escribir "El orden de mayor a menor es ",num3,",",num2,",",num1;
	FinSi
	si num1 > num2 y num2 < num3 Entonces
		Escribir "El orden de mayor a menor es ",num1,",",num3,",",num2;
	FinSi
	si num3 > num1 y num1 < num2 Entonces
		Escribir "El orden de mayor a menor es ",num3,",",num2,",",num1;
	FinSi
	
FinAlgoritmo