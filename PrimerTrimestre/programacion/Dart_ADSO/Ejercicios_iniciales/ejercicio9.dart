import 'dart:io';


//Juan Diego Rios Giraldo

//Pedir el lado de un cubo y calcular su volumen V = lado^3.

void main(List<String> args) {

  //Definición de variables

  double lado;
  double volumen;

  //Entrada

  stdout.writeln("Ingrese el lado del cubo");
  lado = double.parse(stdin.readLineSync()!);

  //Proceso

  volumen = lado  * lado * lado;

  //Salida
  
  print("El volumen del cubo es de $volumen");


}