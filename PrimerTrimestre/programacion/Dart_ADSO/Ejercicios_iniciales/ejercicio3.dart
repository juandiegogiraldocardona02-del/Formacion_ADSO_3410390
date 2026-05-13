import 'dart:io';

//Juan Diego Rios Giraldo

//Hacer un algoritmo que lea el nombre de un conductor, 
//la distancia recorrida (km) y el tiempo empleado (horas) para mostrar la velocidad promedio.
void main(List<String> args) {

  // Definición de variables

  String nombre;
  double distancia;
  double tiempo;
  double velocidadPromedio;

  // Entrada

  stdout.writeln("Cual es el nombre del conductor?");
  nombre = stdin.readLineSync()!;

  stdout.writeln("Ingrese distancia recorrida en kilometros");
  distancia = double.parse(stdin.readLineSync()!);

  stdout.writeln("Cuanto tiempo en horas se tardo en recorrer esa distancia?");
  tiempo = double.parse(stdin.readLineSync()!);

  //Proceso

  velocidadPromedio = distancia / tiempo;

  // Salida
  
  print("El conductor es $nombre, y recorrio $distancia kilometros en $tiempo horas con una velocidad promedio de $velocidadPromedio km por hora");
}