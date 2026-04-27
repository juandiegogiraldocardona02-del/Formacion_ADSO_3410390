
Algoritmo ejercicio24
	
	//Juan Diego Rios Giraldo
	//Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene.
	
	//DEFINICIÓN DE VARIABLES
	
	Definir entrada como cadena;
	Definir i,caractere,cifras Como Entero;
	
	//ENTRADA 
	
	Escribir "Ingrese numero entre 0 y 9.999";
	Leer entrada;
	
	//INICIACION DE VARIABLES
	 
	caractere <- Longitud(entrada);
	cifras <- 0;
	para i <- 0 Hasta caractere -1 Con Paso 1 Hacer
		si Subcadena(entrada,i,i) <> "." y Subcadena(entrada,i,i)<> "," Entonces
			cifras <- cifras +1;
		FinSi
	FinPara
	
	//SALIDA
	
	Escribir "El numero ingresado tiene ",cifras," cifras en total";
	

	
FinAlgoritmo