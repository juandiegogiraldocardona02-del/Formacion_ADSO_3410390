import 'dart:io';
/*El área de Bienestar al Aprendiz del SENA ha actualizado las políticas para el servicio de restaurante. Para recibir el almuerzo subsidiado por un valor de $2.000, el aprendiz debe cumplir simultáneamente con los siguientes requisitos: pertenecer al estrato 1 o al estrato 2, Y tener cero (0) faltas disciplinarias registradas en el sistema. Si el aprendiz no cumple con todas estas condiciones, debe cancelar la tarifa regular de $6.000. Solicite al usuario su nombre, su estrato y la cantidad de faltas disciplinarias. Utilice un condicional doble con operadores lógicos para determinar el valor a pagar. */

void main(List<String> arguments) {
  print('--- SERVICIO DE RESTAURANTE SUBSIDIADO ---');

  // Solicitar datos al usuario

  print('Ingrese su nombre:');
  String nombre = stdin.readLineSync()??'Desconocido'; // Validar entrada de texto

  print('Ingrese su estrato (1, 2, o superior):');
  int estrato = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica

  print('Ingrese la cantidad de faltas disciplinarias registradas:');
  int faltasDisciplinarias = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica

  // Determinar el valor a pagar según los requisitos

  double valorPagar;
  if ((estrato == 1 || estrato == 2) && faltasDisciplinarias == 0) {
    valorPagar = 2000.0; // Valor subsidiado
  } else {
    valorPagar = 6000.0; // Tarifa regular
  }

  // Imprimir resultados
  
  print('--- RESULTADO ---');
  print('$nombre, su estrato es $estrato y tiene $faltasDisciplinarias faltas disciplinarias.');
  print('El valor a pagar por el almuerzo es de ${valorPagar.toStringAsFixed(2)} pesos.');
}