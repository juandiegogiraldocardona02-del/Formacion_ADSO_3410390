import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir una calificación alfabética (A, B, C, D) y mostrar su equivalente numérico
// o descripción: A (Excelente), B (Bueno), C (Regular), D (Deficiente).

void main(List<String> args) {

  //Definición de variables

  String calificacion;

  //Entrada
  
  stdout.writeln("Ingrese la calificación A, B, C o D");
  calificacion = stdin.readLineSync()!.toUpperCase();

  //Proceso y Salida

  if (calificacion == "A") {

    print("Su calificación es excelente");

  } else if (calificacion == "B") {

    print("Su calificación es buena");

  } else if (calificacion == "C") {

    print("Su calificación es regular");

  } else if (calificacion == "D") {

    print("Su calificación es deficiente");

  } else {

    print("Calificación no válida");
  }

}