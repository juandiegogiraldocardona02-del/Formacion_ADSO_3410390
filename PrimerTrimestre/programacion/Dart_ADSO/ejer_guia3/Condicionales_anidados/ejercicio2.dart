import 'dart:io';
/*Dado el monto de una compra calcular el descuento considerado
• Descuento es 20% si el monto es mayor a 20000 pesos.
• Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
• no hay descuento si el monto es menor o igual a 10000 pesos con condicionales anidados*/

void main() {
  print("Ingrese el monto de la compra:");
  double monto = double.parse(stdin.readLineSync()!);
  double descuento = 0;

  if (monto > 20000) {
    descuento = monto * 0.2;
  } else {
    if (monto > 10000) {
      descuento = monto * 0.1;
    }
  }

  print("El descuento es: $descuento");
}