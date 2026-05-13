import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir el nombre de un empleado, el valor del día trabajado y el número de días laborados en el mes; mostrar el nombre y el salario mensual.

void main(List<String> args) {
  
  //Definición de variables

  String nombre;
  double valorDia;
  int diasLaborados;
  double salario;

  //Entrada

  stdout.writeln("Ingrese el nombre del empleado");
  nombre = stdin.readLineSync()!;
  stdout.writeln("Ingrese el valor del día trabajado");
  valorDia = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número de días laborados");
  diasLaborados = int.parse(stdin.readLineSync()!);

  //Proceso

  salario = valorDia * diasLaborados;

  //Salida
  
  print("El empleado $nombre tiene un salario mensual de $salario");

}
