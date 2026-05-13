import 'dart:io';

//Juan Diego Rios Giraldo

//Hacer un algoritmo que lea la temperatura de un paciente; si es mayor a 38 grados, mostrar "Tiene fiebre", de lo contrario "Temperatura normal".

void main(List<String> args) {

  //Definición de variables

  double temperatura;

  //Entrada

  stdout.writeln("Ingrese la temperatura del paciente");
  temperatura = double.parse(stdin.readLineSync()!);

  //Proceso y Salida
  
  if (temperatura > 38) {
    print("El paciente tiene fiebre");
  } else {
    print("El paciente tiene una temperatura normal");
  }

}