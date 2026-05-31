import 'dart:io';
/*Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene.
Es necesario tener en cuenta si es año bisiesto o no. con condicionales múltiples.*/

void main() {
  print("Ingrese el nombre del mes:");
  String mes = stdin.readLineSync()!.toLowerCase();

  print("Ingrese el año:");
  int year = int.parse(stdin.readLineSync()!);

  int dias = 0;

  switch (mes) {
    case "enero":
    case "marzo":
    case "mayo":
    case "julio":
    case "agosto":
    case "octubre":
    case "diciembre":
      dias = 31;
      break;
    case "abril":
    case "junio":
    case "septiembre":
    case "noviembre":
      dias = 30;
      break;
    case "febrero":
      if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        dias = 29; // Año bisiesto
      } else {
        dias = 28; // Año no bisiesto
      }
      break;
    default:
      print("Mes no válido.");
      return;
  }

  print("El mes de $mes del año $year tiene $dias días.");
}