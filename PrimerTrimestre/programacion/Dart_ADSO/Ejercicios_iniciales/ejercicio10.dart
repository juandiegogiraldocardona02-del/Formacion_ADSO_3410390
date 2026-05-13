import 'dart:io';

//Juan Diego Rios Giraldo

//Hacer un algoritmo que lea un número de metros y lo convierta a centímetros y milímetros.

void main(List<String> args) {

  //Definición de variables

  double centimetros;
  double milimetros;
  double numero;

  //Entrada

  stdout.writeln("Ingrese la cantidad de metros que desea convertir a centimetros y milimetros");
  numero = double.parse(stdin.readLineSync()!);

  //Proceso

  centimetros = numero * 10;
  milimetros = numero * 100;

  //Salida
  
  print("Los $numero metros, son iguales a $centimetros centimetros y a $milimetros milimetros");

}
