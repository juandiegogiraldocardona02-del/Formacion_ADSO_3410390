import 'dart:io';

//Juan Diego Rios Giraldo

//Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente (ejemplo: 1-Verano, 2-Otoño, etc.).

void main(List<String> args) {

  //Definición de variables

  int mes;

  //Entrada

  stdout.writeln("Ingrese el número del mes (1 al 4)");
  mes = int.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (mes == 1) {
    print("El mes 1 corresponde a: Verano");
  } else if (mes == 2) {
    print("El mes 2 corresponde a: Otoño");
  } else if (mes == 3) {
    print("El mes 3 corresponde a: Invierno");
  } else if (mes == 4) {
    print("El mes 4 corresponde a: Primavera");
  } else {
    print("Número fuera del rango solicitado.");
  }

}