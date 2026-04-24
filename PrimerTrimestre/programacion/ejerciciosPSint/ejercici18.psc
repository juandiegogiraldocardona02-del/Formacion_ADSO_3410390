Algoritmo ejercici18
	//Juan Diego Rios Giraldo
	//Pedir un número e indicar si es positivo o negativo.
	
	//DEFINICIÓN DE VARIABLES 
	
	Definir num Como Real;
	
	//ENTRADA
	Escribir "Ingrese su número";
	Leer num;
	
	//PROCESO Y SALIDA
	
	si num <= 0 Entonces
		si num == 0 Entonces
			Escribir "Su número es neutro";
		SiNo
			Escribir "Su número es negativo";
		FinSi
		
	SiNo
		Escribir "Su número es positivo";
	FinSi
	
	
FinAlgoritmo
