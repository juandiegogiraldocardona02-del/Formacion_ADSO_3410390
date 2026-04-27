Algoritmo ejercicio29
	//Juan Diego Rios Giraldo
	//Dado un monto, calcular el descuento considerando que por encima de 100 el descuento es del 10% y por debajo de 100, el descuento es del 2%. 
	
	//DEFINICION DE VARIABLES
	
	Definir descuento10,descuento2,valorA Como Real;
	
	//ENTRADA
	
	Escribir "Ingrese el valor de su compra";
	Leer valorA;
	
	//PROCESO 
	
	si valorA > 100 Entonces
		descuento10 <- valorA*0.10;
		valorA <- valorA-descuento10;
		Escribir "Su compra tiene un descuento del 10% y ahora cuesta ",valorA;
	SiNo
		descuento2 <- valorA*0.02;
		valorA <- valorA-descuento2;
		Escribir "Su compra tiene un descuento del 2% y ahora cuesta ",valorA;
	FinSi
FinAlgoritmo
