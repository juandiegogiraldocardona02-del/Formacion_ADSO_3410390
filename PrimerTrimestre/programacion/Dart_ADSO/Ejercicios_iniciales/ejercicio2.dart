import 'dart:io';

//Juan Diego Rios Giraldo

//Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura actual
// en grados Celsius, y luego los muestre.

void main(List<String> args) {

  // Definición de variables
  
  String ciudad;
  double temperatura;

  //Entrada y proceso

  stdout.writeln("Cual es la ciudad?");
  ciudad = stdin.readLineSync()!;

  stdout.writeln("Ingrese la tempratura de dicha ciudad en grados celcius");
  temperatura = double.parse(stdin.readLineSync()!);

  //Salida

  print("En la ciudad $ciudad tiene una temperatura actual de $temperatura grados celcius");
}