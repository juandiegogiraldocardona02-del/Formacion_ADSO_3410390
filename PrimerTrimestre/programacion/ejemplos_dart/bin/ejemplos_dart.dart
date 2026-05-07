import 'dart:io';

void main(List<String> arguments) {
  print('Hello world!');

  // Tipos de variables
  // Definiicón de una variable tipo cadena
  String programaFromacion = 'Analisis y Desarrollo de Software';

  // Definiicón de una variable tipo Entero
  int cantAprendices = 28;

  // Definiicón de una variable tipo Real
  double promedioNotasGrupo = 3.7;

  // Definiicón de una variable tipo Lógica o Booleana
  bool estaActivo = false; // true or false

  const PI = 3.1416; // definición Constante. Se asigna en tiempo de compilación 

  // Definición de constantes que se asignan en tiempo de ejecución
  final fechaActual = DateTime.now();

  // Escribir mensajes por consola 
  print('----------------------------------');
  print(programaFromacion); // Imprime el valor de la variable 
  print('----------------------------------'); // Imprime un texto 
  print("Programa de Formación: $programaFromacion");
  print('----------------------------------');
  print("Cantidad de Aprendices: $cantAprendices");
  print('----------------------------------');
  print("Promedio De Las Notas Del Grupo: $promedioNotasGrupo");
  print('----------------------------------');
  print("Estado del Cliente: $estaActivo");
  print('----------------------------------');
  print("Valor de PI: $PI");
  print('----------------------------------');
  print("Fecha de hoy: $fechaActual");
  print('----------------------------------');

  /* Operaciones de LEER (obtener datos)
  y ESCRIBIR (mostrar en pantalla)*/
  String? nombre; // Variable que permite nulos
  int edad;
  double peso;
  stdout.writeln("Bienvenid@ a nuestra app");
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  stdout.writeln("Ingrese su edad");
  edad = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese su peso");
  peso = double.parse(stdin.readLineSync()!);
  stdout.writeln("Su nombre es $nombre, tiene $edad años y un peso de $peso");



  
  



}