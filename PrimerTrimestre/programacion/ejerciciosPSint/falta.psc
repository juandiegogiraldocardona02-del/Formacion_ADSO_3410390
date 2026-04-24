Algoritmo ejercicio19
	//Juan Diego Rios Giraldo
	//Pedir dos números y decir si uno es múltiplo del otro.
	
	//DEFINICIÓN DE VARIABLES
	
	Definir num1,num2,i Como Real;
	Definir multi Como Real;
	Definir resultado Como Real;
	i = 1;
	
	//ENTRADA
	
	Escribir "Ingrese su numero 1";
	Leer num1;
    Escribir "Ingrese su numero 2";
	Leer num2;
	Escribir "",num2," X ",i," = ",num2*i;
	Leer resultado;
	
	//PROCESO 
		si resultado == num1 Entonces
			Escribir "Multiplo";
		SiNo
			Repetir 
				si resultado <> num1
				Escribir "No multiplo";
				i <- i+1
		FinSi
		


FinAlgoritmo
