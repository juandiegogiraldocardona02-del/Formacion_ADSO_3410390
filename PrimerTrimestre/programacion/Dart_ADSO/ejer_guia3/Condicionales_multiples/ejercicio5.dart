import 'dart:io';
/*El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave.
ClaveZonaPrecio
12América del Norte200
15América Central220
18América del Sur450
19Europa350
23Asia600
25África600
29Oceanía500
Construya la solución para calcular e imprimir el costo de una llamada dada la clave. con condicionales múltiples.*/

void main() {
  print("Ingrese la clave de la zona geográfica:");
  int claveZona = int.parse(stdin.readLineSync()!);

  print("Ingrese el número de minutos hablados:");
  int minutos = int.parse(stdin.readLineSync()!);

  double costoPorMinuto = 0;

  switch (claveZona) {
    case 12:
      costoPorMinuto = 200;
      break;
    case 15:
      costoPorMinuto = 220;
      break;
    case 18:
      costoPorMinuto = 450;
      break;
    case 19:
      costoPorMinuto = 350;
      break;
    case 23:
      costoPorMinuto = 600;
      break;
    case 25:
      costoPorMinuto = 600;
      break;
    case 29:
      costoPorMinuto = 500;
      break;
    default:
      print("Clave de zona no válida.");
      return;
  }

  double costoTotal = costoPorMinuto * minutos;

  print("El costo total de la llamada es: \$${costoTotal.toStringAsFixed(2)}");
}