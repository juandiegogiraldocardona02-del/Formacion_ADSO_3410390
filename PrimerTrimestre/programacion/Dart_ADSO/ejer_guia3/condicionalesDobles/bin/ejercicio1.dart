import 'dart:io';
//Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.

void main(List<String> arguments) {
  stdout.writeln('Ejercicio 1: Condicionales Dobles');
  double num1, num2;

  //ENTRADA

  stdout.writeln('Ingrese el primer número:');
  num1 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese el segundo número:');
  num2 = double.parse(stdin.readLineSync()!);

  //PROCESO y SALIDA

  if (num1 < num2) {
    stdout.writeln('Los números en forma ascendente son: $num1, $num2');
  } else {
    stdout.writeln('Los números en forma ascendente son: $num2, $num1');
  }
}
