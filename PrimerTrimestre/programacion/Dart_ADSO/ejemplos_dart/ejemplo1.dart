import 'dart:io';

void main(List<String> args) {
  // Definición de variables
  double precio, descuento, totalPagar;
  int cantidad;

  // Entrada
  stdout.writeln('Ingrese el precio del producto: ');
  precio = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese la cantidad de productos: ');
  cantidad = int.parse(stdin.readLineSync()!);
  totalPagar = precio * cantidad;
  descuento = totalPagar * 0.15;
  totalPagar = totalPagar - descuento;
  // Salida
  stdout.writeln('El total a pagar es: $totalPagar');
}