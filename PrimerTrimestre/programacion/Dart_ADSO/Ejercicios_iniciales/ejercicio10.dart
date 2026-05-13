import 'dart:io';

//Juan Diego Rios Giraldo

//Hacer un algoritmo que lea un número de metros y lo convierta a centímetros y milímetros.

void main(List<String> args) {

  //Definición de variables

  double numero;
  double centimetros;
  double milimetros;

  //Entrada

  stdout.writeln("Ingrese los metros dados");
  numero = double.parse(stdin.readLineSync()!);

  //Proceso

  centimetros = numero * 10;
  milimetros = numero * 100;

  //Salida
  
  print("Los metros ingresados fueron $numero, su valor en centimetros son $centimetros centimetros y en milimetros es de $milimetros milimetros");

}
