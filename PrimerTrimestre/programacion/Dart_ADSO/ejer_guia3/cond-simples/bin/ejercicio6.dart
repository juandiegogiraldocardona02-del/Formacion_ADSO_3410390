import 'dart:io';
void main(List<String> arguments) {
/*
En un supermercado se hace una promoción, mediante la cual el cliente 
obtiene un descuento dependiendo de un número que se escoge al azar.
Si el numero escogido es menor que 74 el descuento es del 15% sobre el total de la compra, 
si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta. 
*/ 

stdout.writeln('Ejercicio 6: Condicionales Simples');
int numero;
double totalCompra, descuento;

//ENTRADA

stdout.writeln('Ingrese el total de la compra:');
totalCompra = double.parse(stdin.readLineSync()!);
stdout.writeln('Ingrese el número escogido al azar:');
numero = int.parse(stdin.readLineSync()!);

//PROCESO

if (numero < 74) {
  descuento = totalCompra * 0.15;
} else {
  var d = descuento = totalCompra * 0.20;
}

//SALIDA

stdout.writeln('El descuento obtenido es: \$$descuento');
}