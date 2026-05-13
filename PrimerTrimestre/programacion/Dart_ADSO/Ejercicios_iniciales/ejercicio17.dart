import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir tres números al usuario y mostrar cuál es el menor de los tres.

void main(List<String> args) {

  //Definiión de variables

    int num1, num2, num3;

  //Entrada

  print("Ingrese tres numeros para mostrar el menor de los tres");
  num1 = int.parse(stdin.readLineSync()!);  
  num2 = int.parse(stdin.readLineSync()!);  
  num3 = int.parse(stdin.readLineSync()!);  

  //Proceso y Salida
  
  if (num1 < num2 && num1 < num3) {

    print("El menor de los tres numeros es el: $num1");

  } else if (num2 < num1 && num2 < num3) {

    print("El menor de los tres numeros es el: $num2");

  } else {

    print("El menor de los tres numeros es el: $num3");
  } 
}