import 'dart:io';

//Juan Diego Rios Giraldo

// Hacer un algoritmo que lea la base y la altura de un triángulo y muestre su perímetro y área

void main(List<String> args) {

  // Definicion de variables

  double b;
  double altura;
  double area;

  //Salida

  stdout.writeln("Ingrese la base de su triangulo");
  b = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la altura de su triangulo");
  altura = double.parse(stdin.readLineSync()!);

  // Proceso
  
  area = (b * altura) / 2;

  // Salida
  
  print ("El area del triangulo es de: $area");
}