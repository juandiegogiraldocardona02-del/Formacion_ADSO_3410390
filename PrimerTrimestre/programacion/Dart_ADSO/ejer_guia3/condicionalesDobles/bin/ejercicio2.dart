import 'dart:io';
/*Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
• Si trabaja 40 horas o menos se le paga $16 por hora
• Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
extra.*/
void main(List<String> arguments) {
  stdout.writeln('Ejercicio 2: Condicionales Dobles');
  double horasTotales, salarioSemanal, horasExtra;

  //ENTRADA

  stdout.writeln('Ingrese el número de horas trabajadas en la semana:');
  horasTotales = double.parse(stdin.readLineSync()!);

  //PROCESO

  if (horasTotales <= 40) {
    salarioSemanal = horasTotales * 16;
  } else {
    horasExtra = horasTotales - 40;
    salarioSemanal = (40 * 16) + (horasExtra * 20);
  }

  //SALIDA
  
  stdout.writeln('El salario semanal del obrero es: \$$salarioSemanal');
} 