import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir dos números y mostrar el resultado de restarle el menor al mayor.

void main(List<String> args) {

  //Definición de variables

  double numero1;
  double numero2;
  double resultado;

  //Entrada

  stdout.writeln("Digite el primer número");
  numero1 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Digite el segundo número");
  numero2 = double.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (numero1 >= numero2) {

    resultado = numero1 - numero2;

    print("El resultado de restarle $numero2 a $numero1 es igual a: $resultado");

  } else {

    resultado = numero2 - numero1;

    print("El resultado de restarle $numero1 a $numero2 es igual a: $resultado");
  }

}