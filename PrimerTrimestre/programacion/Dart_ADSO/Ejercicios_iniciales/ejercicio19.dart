import 'dart:io';

//Juan Diego Rios Giraldo

//Un trabajador cobra $20.000 por hora. Si trabaja más de 48 horas, las horas adicionales se pagan como "Horas Extra" con un recargo de $5.000 sobre el valor normal. Calcular su salario total.

void main(List<String> args) {

  //Definición de variables

  double horasTrabajadas;
  double valorHora = 20000;
  double recargoExtra = 5000;
  double horasExtra;
  double salarioTotal;

  //Entrada

  stdout.writeln("Ingrese el total de horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);

  //Proceso

  if (horasTrabajadas > 48) {
    horasExtra = horasTrabajadas - 48;
    salarioTotal = (48 * valorHora) + (horasExtra * (valorHora + recargoExtra));
  } else {
    salarioTotal = horasTrabajadas * valorHora;
  }

  //Salida
  
  print("El salario total por $horasTrabajadas horas es de: \$$salarioTotal");

}