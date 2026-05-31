import 'dart:io';
/*El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la
duración de la llamada.
.
Clave
Zona
Precio
Precio/minuto
(del 4 en adelante)
•
•
12América del Norte200150
15América Central220180
18América del Sur450350
19Europa350270
23Asia600460
25África600460
29Oceanía500390. con condicionales múltiples.*/

void main() {
  print("Ingrese la clave de la zona geográfica:");
  int claveZona = int.parse(stdin.readLineSync()!);

  print("Ingrese el número de minutos hablados:");
  int minutos = int.parse(stdin.readLineSync()!);

  double costoPorMinuto = 0;

  switch (claveZona) {
    case 12:
      costoPorMinuto = minutos > 4 ? 150 : 200;
      break;
    case 15:
      costoPorMinuto = minutos > 4 ? 180 : 220;
      break;
    case 18:
      costoPorMinuto = minutos > 4 ? 350 : 450;
      break;
    case 19:
      costoPorMinuto = minutos > 4 ? 270 : 350;
      break;
    case 23:
      costoPorMinuto = minutos > 4 ? 460 : 600;
      break;
    case 25:
      costoPorMinuto = minutos > 4 ? 460 : 600;
      break;
    case 29:
      costoPorMinuto = minutos > 4 ? 390 : 500;
      break;
    default:
      print("Clave de zona no válida.");
      return;
  }

  double costoTotal = costoPorMinuto * minutos;

  print("El costo total de la llamada es: \$${costoTotal.toStringAsFixed(2)}");
}