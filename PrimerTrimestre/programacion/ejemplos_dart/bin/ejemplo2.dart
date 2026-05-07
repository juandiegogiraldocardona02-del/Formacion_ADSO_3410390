import 'dart:io';

void main(List<String> args) {
  int edad;
  String? diaSemana;
  print("Ingrese la edad de la persona");
  edad = int.parse(stdin.readLineSync()!);
  print("Ingrese el dia de la semana");
  diaSemana = stdin.readLineSync();
  //Condicional simple
  if (diaSemana == "lunes") {
    print("Todos hacen el aseo");
  }
  //Condicional doble
  if (edad >= 18) {
    print("usted es mayor de edad");
  } else {
    print("Usted es menor de edad");
  }
}
