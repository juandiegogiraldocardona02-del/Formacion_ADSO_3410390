import 'dart:io';
/*En una finca de café orgánico  se está planificando la fertilización de los cafetos utilizando 
Silicorrector. La dosis depende directamente del nivel de acidez del suelo (pH). Solicite al usuario 
la cantidad de árboles a fertilizar y el nivel de pH del suelo. Si el pH es menor a 5.5 (suelo ácido),
 se requiere una "Dosis de choque" de 200 gramos por árbol. Si el pH es 5.5 o mayor, el suelo está 
 balanceado y solo requiere una "Dosis de mantenimiento" de 50 gramos por árbol. Calcule y muestre 
 la cantidad total de abono (en gramos y kilogramos) que se debe preparar para el lote.*/

void main(List<String> arguments) {
  print('--- PLANIFICACIÓN DE FERTILIZACIÓN PARA CAFETOS ---');

  // Solicitar datos al usuario

  print('Ingrese la cantidad de árboles a fertilizar:');
  int cantidadArboles = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica 0 si el usuario no ingresa un número válido init

  print('Ingrese el nivel de pH del suelo:');
  double nivelPH = double.parse(stdin.readLineSync()??'0.0'); // Validar entrada numérica 0.0 si el usuario no ingresa un número válido double

  // Determinar la dosis por árbol según el nivel de pH

  double dosisPorArbol;
  String tipoDosis;
  if (nivelPH < 5.5) {
    dosisPorArbol = 200.0; // Dosis de choque
    tipoDosis = ('El suelo es ácido. Se requiere una dosis de choque de 200 gramos por árbol.');
  } else {
    dosisPorArbol = 50.0; // Dosis de mantenimiento
    tipoDosis = ('El suelo está balanceado. Se requiere una dosis de mantenimiento de 50 gramos por árbol.');
  }

  // Calcular la cantidad total de abono

  double totalAbonoGramos = cantidadArboles * dosisPorArbol;
  double totalAbonoKilogramos = totalAbonoGramos / 1000.0;

  // Imprimir resultados
  
  print('--- RESULTADO ---');
  print('Cantidad total de abono a preparar: ${totalAbonoGramos.toStringAsFixed(2)} gramos que equivalen a ${totalAbonoKilogramos.toStringAsFixed(2)} kilogramos para una dosis de tipo $tipoDosis');
}