//Solicitar precio y cantidad de un producto y mostrar el total a pagar con 15% de descuento

import 'dart:io';

void main(List<String> args) {
  //Definificion variables
  int cantidad;
  double precio, totalPagar, descuento;

  //Entrada
  stdout.writeln("Ingrese el precio del Producto");
  precio = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la Cantidad");
  cantidad = int.parse(stdin.readLineSync()!);
  totalPagar = precio * cantidad;
  descuento = totalPagar * 0.15;
  totalPagar = totalPagar - descuento;

  //SALIDA
  stdout.writeln("El total a pagar es de : $totalPagar");
}
