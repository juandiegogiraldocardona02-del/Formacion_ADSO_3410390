import 'dart:io';

//Juan Diego Rios Giraldo

//Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente 
//(ejemplo: 1-Verano, 2-Otoño, etc.).

void main(List<String> args) {

  //Definición de variables

  int mes;

  //Entrada

  stdout.writeln("Ingrese el número del mes del 1 al 4");
  mes = int.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (mes == 1) {

    print("El mes 1 es: Verano");

  } else if (mes == 2) {

    print("El mes 2 es: Otoño");

  } else if (mes == 3) {

    print("El mes 3 es: Invierno");

  } else if (mes == 4) {

    print("El mes 4 es: Primavera");

  } else {

    print("El número del mes no es válido, por favor ingrese un número del 1 al 4");
  }

}