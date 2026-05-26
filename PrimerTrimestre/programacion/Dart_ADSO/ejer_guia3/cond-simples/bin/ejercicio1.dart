import 'dart:io';

void main(List<String> arguments) {
/*
El jefe del personal de operación de la industria aceitera Móvil 
desea calcular el sueldo neto de sus empleados bajo las siguientes normas, 
solicitar el nombre del empleado, número de horas trabajadas y la cuota 
por hora trabajada, para calcular el sueldo neto del empleado, se le otorga 
un incentivo del 5% si el empleado trabajó más de 40 horas. 
Imprimir el nombre del empleado y su sueldo. Desarrollar el algoritmo y diagrama de flujo. 
*/

stdout.writeln('Ejercicio 1: Condicionales Simples');
String? nombre; //La interroagacion nos ayuda con el nulo o tambien se puede usar readLineSync()! para decirle que no es nulo
double horasTotales, valorPorHora, salarioNeto, incentivo;

//ENTRADA

stdout.writeln('Ingrese el nombre del empleado:');
nombre = stdin.readLineSync();
stdout.writeln('Ingrese el número de horas trabajadas:');
horasTotales = double.parse(stdin.readLineSync()!);
stdout.writeln('Ingrese el valor por hora trabajada:');
valorPorHora = double.parse(stdin.readLineSync()!);

//PROCESO

salarioNeto = horasTotales* valorPorHora;
if (horasTotales > 40) {
  incentivo = salarioNeto * 0.05;
  salarioNeto = salarioNeto + incentivo; // salarioNeto = salarioNeto + incentivo
}

//SALIDA 

stdout.writeln("El empleado \"$nombre\", tiene un sueldo neto de: \$$salarioNeto");
}