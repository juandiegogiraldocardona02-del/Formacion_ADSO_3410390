Algoritmo ejercicio17
	//Juan Diego Rios Giraldo
	// Pedir dos números y decir si son iguales o no
	
	//DEFINICIÓN DE VARIABLES
	
	Definir num1,num2 Como Real;
	Definir diferencia Como Real;
	Definir numMayor,numMenor Como Real;
	diferencia <- 0;
	numMayor <- 0;
	
	//ENTRADA
	
	Escribir "Ingrese el valor del numero 1";
	Leer num1;
	Escribir "Ingrese el valor del numero 2";
	Leer num2;
	si num1 > num2 Entonces
		numMayor <- num1;
		numMenor <- num2;
	SiNo
		numMayor <- num2;
		numMenor <- num1;
	FinSi
	diferencia <- numMayor-numMenor;
	
	//PROCESO 
	
	si num1 == num2 Entonces
		Escribir "Los numeros 1 y 2 son iguales";
	SiNo
		Escribir "Los numeros 1 y 2 no son iguales y tienen una diferencia de ",diferencia," entre si";
	FinSi
	
FinAlgoritmo
