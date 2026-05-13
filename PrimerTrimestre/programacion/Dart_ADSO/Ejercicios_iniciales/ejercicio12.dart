import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir un número al usuario y determinar si es divisible por 5.

void main(List<String> args) {

  //Definición de variables

  int numero;

  //Entrada

  stdout.writeln("Ingrese un número");
  numero = int.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (numero % 5 == 0) {
    print("El número $numero es divisible por 5");
  } else {
    print("El número $numero no es divisible por 5");
  }

}