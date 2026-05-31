import 'dart:io';
/*Una frutería ofrece las manzanas con descuento según la siguiente tabla:
NUM. DE KILOS COMPRADOS % DESCUENTO
0-20
2.01 - 510
5.01 - 1015
10.01 en adelante20
Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo
vale $1300 con condicionales anidados*/

void main() {
  print("Ingrese el número de kilos de manzanas que desea comprar:");
  double kilos = double.parse(stdin.readLineSync()!);
  double precioUnitario = 1300;
  double totalCompra = kilos * precioUnitario;
  double descuento = 0;

  if (kilos <= 2) {
    descuento = totalCompra * 0.02;
  } else {
    if (kilos <= 5) {
      descuento = totalCompra * 0.05;
    } else {
      if (kilos <= 10) {
        descuento = totalCompra * 0.1;
      } else {
        descuento = totalCompra * 0.2;
      }
    }
  }

  print("El descuento es: $descuento");
}