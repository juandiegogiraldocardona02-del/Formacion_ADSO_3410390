import 'dart:io';

//Juan Diego Rios Giraldo
//Leer la edad de una persona y mostrar un mensaje indicando si es
//mayor de edad o menor de edad.

void main(List<String> args) {

  //Definición de variables

  int edad;

  //Entrada

  stdout.writeln("Cuantos años tiene la persona?");
  edad = int.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (edad >= 18) {
    print("La persona es mayor de edad");
  } else {
    print("La persona es menor de edad");
      }

}