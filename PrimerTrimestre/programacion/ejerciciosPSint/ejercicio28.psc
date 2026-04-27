Algoritmo ejercicio28
	//Juan Diego Rios Giraldo
	// Un trabajador recibe su pago, según la cantidad de horas trabajadas y su valor.  
    //Si la cantidad de horas trabajadas es mayor que 40, éstas se consideran horas extra, 
	//y tienen un incremento de $10000 (diez mil) sobre el valor de la hora.  
	//Calcular y mostrar el salario (pago) del trabajador. Nota: leer horas trabajadas y valor de la hora. 
	
	//DEFINICION DE VARIABLES
	
	Definir pagoHora Como Real;
	Definir horasTrabajo,pago,incremento,pagoHorasExtra,horasExtra,pagoTotal Como Real;
	pagoHora <- 13500;
	
	
	//ENTRADA PROCESO Y SALIDA
	
	Escribir "Ingrese su cantidad de horas trabajadas";
	Leer horasTrabajo;
	si horasTrabajo > 40 Entonces
		pago <- horasTrabajo*pagoHora;
		horasExtra <- horasTrabajo-40;
		pago <- pagoHora * horasTrabajo;
		pagoHorasExtra <- horasExtra*10000;
		pagoTotal <- pago + pagoHorasExtra;
		Escribir "Usted a trabajado horas extras,se le agregara una recarga de $10000 por hora extra trabajada: Usted trabajo un total de ",horasTrabajo,"h, con un total de ",horasExtra," horas extra por lo tanto su pago es de $",pagoTotal;
	SiNo
		pago <- horasTrabajo*pagoHora;
		Escribir "Usted trabajo un total de ",horasTrabajo,"h por lo tanto su pago es de ",pago;
	FinSi
	
FinAlgoritmo