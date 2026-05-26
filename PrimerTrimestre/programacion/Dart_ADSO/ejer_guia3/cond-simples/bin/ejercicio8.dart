import 'dart:io';
void main(List<String> arguments) {
/*
Dada la duración en minutos de una llamada calcular el costo, considerando: 
• Hasta tres minutos el costo es 600 
• Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
*/

stdout.writeln('Ejercicio 8: Condicionales Simples');
int duracion;
double costo;

//ENTRADA

stdout.writeln('Ingrese la duración de la llamada en minutos:');
duracion = int.parse(stdin.readLineSync()!);

//PROCESO

if (duracion <= 3) {
  costo = 600;
} else {
  costo = 600 + (duracion - 3) * 150;
}

//SALIDA

stdout.writeln('La duración de la llamada es: $duracion minutos');
stdout.writeln('El costo de la llamada es: \$$costo');
}