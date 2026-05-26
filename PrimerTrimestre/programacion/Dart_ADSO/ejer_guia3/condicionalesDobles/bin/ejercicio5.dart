import 'dart:io';
/*Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de
descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad
pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un
programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como
para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el
usuario ingresa 2.*/

void main(List<String> arguments) {
  stdout.writeln('Ejercicio 5: Condicionales Dobles');
  int cantidadBrochas, cantidadRodillos, tipoPago;
  double precioUnitarioBrochas, precioUnitarioRodillos, totalBrochas, totalRodillos, totalCompra, descuentoPagoContado, totalPagar;

  //ENTRADA

  stdout.writeln('Ingrese la cantidad de brochas de cerda:');
  cantidadBrochas = int.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese el precio unitario de las brochas de cerda:');
  precioUnitarioBrochas = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese la cantidad de rodillos:');
  cantidadRodillos = int.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese el precio unitario de los rodillos:');
  precioUnitarioRodillos = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese el tipo de pago (1 para contado, 2 para crédito):');
  tipoPago = int.parse(stdin.readLineSync()!);

  //PROCESO Y SALIDA

  totalBrochas = cantidadBrochas * precioUnitarioBrochas * 0.80; //20% de descuento
  totalRodillos = cantidadRodillos * precioUnitarioRodillos * 0.85; //15% de descuento
  totalCompra = totalBrochas + totalRodillos;
  if (tipoPago == 1) {
    descuentoPagoContado = totalCompra * 0.07; //7% de descuento
    totalPagar = totalCompra - descuentoPagoContado;
    stdout.writeln('El costo total de la orden para pago de contado es: \$$totalPagar');
  } else if (tipoPago == 2) {
    totalPagar = totalCompra; //No hay descuento adicional para pago a crédito
    stdout.writeln('El costo total de la orden para pago a crédito es: \$$totalPagar');
  } else {
    stdout.writeln('Tipo de pago no válido. Por favor ingrese 1 para contado o 2 para crédito.');
  }
}