Proceso ejercicio6
	//Juan Diego Rios Giraldo 
	//Hacer un algoritmo que lea el nombre de un artículo, el valor unitario, la cantidad a comprar y muestre 
	//el nombre y el total a pagar. 
	
	//DEFINICIÓN DE VARIABLES
	
	Definir nomArticulo como cadena;
	Definir valorArticulo Como Real;
	Definir cantidad Como Entero;
	Definir total Como Real;
	
	//ENTRADA Y PROCESO 
	
	Escribir "Ingrese el nombre del articulo que desea comprar";
	leer nomArticulo;
	Repetir
		Escribir "Ingrese el valor de su ",nomArticulo;
		Leer valorArticulo;
		Escribir "Ingrese la cantidad de ",nomArticulo," que quiere comprar";
		Leer cantidad;
		si valorArticulo <= 0 o cantidad <= 0 Entonces
			Escribir "Error usted digito un valor incorrecto";
		FinSi
	Hasta Que valorArticulo > 0;
	
	
	
	
	//SALIDA
	
	total <- (valorArticulo*cantidad);
	Escribir "El total a pagar en la compra de su ",nomArticulo, " es igúal a ",total;
	
FinProceso