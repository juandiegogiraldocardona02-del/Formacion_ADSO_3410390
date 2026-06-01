import 'dart:io';
/*En el centro de formación CPIC, se requiere calcular el auxilio de transporte para los aprendices
del programa ADSO. El auxilio base se calcula internamente multiplicando los días de asistencia
en el mes por una tarifa fija de $5.000 diarios. Solicite al usuario el nombre del aprendiz,
su municipio de residencia y los días que asistió al centro. Si el aprendiz vive fuera
de "Manizales" (por ejemplo, en Villamaría o Neira), se le otorga un subsidio extra del
15% sobre el auxilio base para cubrir la distancia. Imprimir el nombre del aprendiz,
el auxilio base calculado y el total a recibir.*/
void main(List<String> arguments) {
  print('--- GESTIÓN DE AUXILIO DE TRANSPORTE CPIC ---');
  
  // Solicitar datos al usuario

  print('Ingrese el nombre del aprendiz:');
  String nombre = stdin.readLineSync()??'';

  print('Ingrese el municipio de residencia del aprendiz:');
  String municipio = stdin.readLineSync()!.trim().toLowerCase();

  print('Ingrese los días de asistencia en el mes:');
  int diasAsistencia = int.parse(stdin.readLineSync()??'0');

  // Calcular el auxilio base

  double tarifaDiaria = 5000.0;
  double auxilioBase = diasAsistencia * tarifaDiaria;

  // Verificar si el aprendiz vive fuera de Manizales

  double subsidioExtra = 0.0;
  if (municipio.toLowerCase() != 'manizales') {
    subsidioExtra = auxilioBase * 0.15; // 15% de subsidio extra
  }

  // Calcular el total a recibir

  double totalRecibir = auxilioBase + subsidioExtra;

  // Imprimir resultados
  
  print('--- RESULTADO ---');
  print('Nombre del aprendiz: $nombre');
  print('Auxilio base calculado: \$${auxilioBase.toStringAsFixed(2)}');
  print('Total a recibir: \$${totalRecibir.toStringAsFixed(2)}');
}
