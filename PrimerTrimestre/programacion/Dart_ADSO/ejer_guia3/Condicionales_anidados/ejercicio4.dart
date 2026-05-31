import 'dart:io';
/*En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra con condicionales anidados*/

void main() {
  print("Ingrese el número de llantas que desea comprar:");
  int numLlantas = int.parse(stdin.readLineSync()!);
  double precioUnitario = 0;

  if (numLlantas < 5) {
    precioUnitario = 90000;
  } else {
    if (numLlantas <= 10) {
      precioUnitario = 80000;
    } else {
      precioUnitario = 70000;
    }
  }

  double totalCompra = numLlantas * precioUnitario;

  print("El precio por cada llanta es: $precioUnitario");
  print("El total a pagar por la compra es: $totalCompra");
}
