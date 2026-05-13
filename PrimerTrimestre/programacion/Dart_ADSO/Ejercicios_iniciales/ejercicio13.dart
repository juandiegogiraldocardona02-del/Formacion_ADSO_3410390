import 'dart:io';

//Juan Diego Rios Giraldo
//Leer la edad de una persona y mostrar un mensaje indicando si es mayor de edad o menor de edad.

void main(List<String> args) {

  //Definición de variables

  int edad;

  //Entrada

  stdout.writeln("Ingrese su edad");
  edad = int.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (edad >= 18) {
    print("La persona de $edad años es mayor de edad");
  } else {
    print("La persona de $edad años es menor de edad");
      }

}