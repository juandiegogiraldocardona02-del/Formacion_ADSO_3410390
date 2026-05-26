import 'dart:io';
/*Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%*/

void main(List<String> arguments) {
  stdout.writeln('Ejercicio 3: Condicionales Dobles');
  int cantidadCamisas;
  double precioUnitario, totalCompra, descuento, totalPagar;

  //ENTRADA

  stdout.writeln('Ingrese la cantidad de camisas a comprar:');
  cantidadCamisas = int.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese el precio unitario de las camisas:');
  precioUnitario = double.parse(stdin.readLineSync()!);

  //PROCESO

  totalCompra = cantidadCamisas * precioUnitario;
  if (cantidadCamisas >= 3) {
    descuento = totalCompra * 0.20;
  } else {
    descuento = totalCompra * 0.10;
  }
  totalPagar = totalCompra - descuento;

  //SALIDA

  stdout.writeln('El total a pagar por la compra de camisas es: \$$totalPagar');
} 