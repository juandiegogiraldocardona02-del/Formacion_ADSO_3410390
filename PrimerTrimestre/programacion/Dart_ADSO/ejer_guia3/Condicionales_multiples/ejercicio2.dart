import 'dart:io';
/*Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de
plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea
fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución :
Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea
Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea
Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.
Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea.
•
•
•
Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la
cantidad que sobrepase el $1000000.
Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.
Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de
hectáreas a fumigar.
Se debe imprimir el nombre del granjero y la cuenta total.con condicionales múltiples.*/

void main() {
  print("Ingrese el nombre del granjero:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el tipo de fumigación solicitada (1-4):");
  int tipoFumigacion = int.parse(stdin.readLineSync()!);

  print("Ingrese el número de hectáreas a fumigar:");
  int hectareas = int.parse(stdin.readLineSync()!);

  // Precios por tipo de fumigación
  const double precioTipo1 = 50000;
  const double precioTipo2 = 70000;
  const double precioTipo3 = 80000;
  const double precioTipo4 = 190000;

  // Cálculo del costo base
  double costoBase = 0;
  switch (tipoFumigacion) {
    case 1:
      costoBase = hectareas * precioTipo1;
      break;
    case 2:
      costoBase = hectareas * precioTipo2;
      break;
    case 3:
      costoBase = hectareas * precioTipo3;
      break;
    case 4:
      costoBase = hectareas * precioTipo4;
      break;
    default:
      print("Tipo de fumigación no válido.");
      return;
  }

  // Aplicar descuento por superficie
  double descuentoSuperficie = 0;
  if (hectareas > 100) {
    descuentoSuperficie = costoBase * 0.05;
    costoBase -= descuentoSuperficie;
  }

  // Aplicar descuento por monto total
  double descuentoMonto = 0;
  if (costoBase > 1000000) {
    descuentoMonto = (costoBase - 1000000) * 0.10;
    costoBase -= descuentoMonto;
  }

  // Imprimir resultado
  print("Nombre del granjero: $nombre");
  print("Cuenta total: \$${costoBase.toStringAsFixed(2)}");
}