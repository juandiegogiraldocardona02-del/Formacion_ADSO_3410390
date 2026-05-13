import 'dart:io';

//Juan Diego Rios Giraldo

// Pedir al usuario su edad actual y mostrar cuántos años tendrá en el año 2050.

void main(List<String> args) {

  //Definición de variables

  int edad;
  int anActual = 2026;
  int anCalculo = 2050;
  int edadSuma;
  int edadFutura;

  //Entrada

  print("Cuantos años tienes actualmente?");
  edad = int.parse(stdin.readLineSync()!);

  // Proceso

  edadSuma = anCalculo - anActual;
  edadFutura = edad + edadSuma;

  //Salida
  
  print("En este año 2026 tienes $edad, años de edad y en el año 2050 tendras $edadFutura años");
}