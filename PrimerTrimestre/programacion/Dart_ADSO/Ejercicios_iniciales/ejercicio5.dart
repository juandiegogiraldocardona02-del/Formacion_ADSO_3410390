import 'dart:io';

//Juan Diego Rios Giraldo

// Hacer un algoritmo que lea la base y la altura de un triángulo y muestre su perímetro y área

void main(List<String> args) {

  // Definicion de vbles

  double base;
  double altura;
  double area;

  //Salida

  stdout.writeln("Ingrese la base del triangulo");
  base = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la altura del triangulo");
  altura = double.parse(stdin.readLineSync()!);

  // Proceso
  
  area = (base * altura) / 2;

  // Salida
  
  print ("El area del triangulo es: $area");
}