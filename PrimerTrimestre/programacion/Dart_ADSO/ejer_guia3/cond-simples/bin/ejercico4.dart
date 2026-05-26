import 'dart:io';
void main(List<String> arguments) {
/*
Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con descuento. 
El descuento lo hace en base a la clave,
 si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves). 
 */

stdout.writeln('Ejercicio 4: Condicionales Simples');
String? nombreArticulo;
int clave;
double precioOriginal, precioDescuento;

//ENTRADA

stdout.writeln('Ingrese el nombre del artículo:');
nombreArticulo = stdin.readLineSync();
stdout.writeln('Ingrese la clave del artículo (1 o 2):');
clave = int.parse(stdin.readLineSync()!);
stdout.writeln('Ingrese el precio original del artículo:');
precioOriginal = double.parse(stdin.readLineSync()!);

//PROCESO

if (clave == 1) {
  precioDescuento = precioOriginal * 0.10;
  precioOriginal = precioOriginal - precioDescuento; //precioOriginal = precioOriginal - precioDescuento
} else if (clave == 2) {
  precioDescuento = precioOriginal * 0.20;
  precioOriginal = precioOriginal - precioDescuento; //precioOriginal = precioOriginal - precioDescuento
} else {
  stdout.writeln('Clave inválida. No se aplicará ningún descuento.');
}

//SALIDA

stdout.writeln('Artículo: "$nombreArticulo"');
stdout.writeln('Clave: $clave');
stdout.writeln('Precio original: \$$precioOriginal');
stdout.writeln('Precio con descuento: \$$precioOriginal');
}