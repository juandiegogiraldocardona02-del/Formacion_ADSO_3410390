import "dart:io";
/*Una finca de café orgánico en Supía liquida el pago diario a sus recolectores multiplicando 
los kilos recolectados por el precio del kilo. Si el recolector logra entregar más de 50 kg 
en el día y el nivel de impurezas es menor al 5%, se le otorga un bono adicional del 10% sobre
 su pago total. Construir un algoritmo que solicite los kilos, el porcentaje de impurezas y el precio 
 por kilo, calculando el pago final.*/

void main(List<String> arguments) {
  print('--- LIQUIDACIÓN DE PAGO PARA RECOLECTORES DE CAFÉ ORGÁNICO ---');

  // Solicitar datos al usuario

  print('Ingrese los kilos recolectados:');
  double kilosRecoleccion = double.parse(stdin.readLineSync()??'0');

  print('Ingrese el precio por kilo:');
  double precioKilo = double.parse(stdin.readLineSync()??'0');

  print('Ingrese el porcentaje de impurezas (ejemplo 4.5):');
  double porcentajeImpurezas = double.parse(stdin.readLineSync()??'0');


  // Calcular el pago base

  double pagoBase = kilosRecoleccion * precioKilo;

  // Verificar si se otorga el bono adicional

  double bonoAdicional = 0.0;
  if (kilosRecoleccion > 50 && porcentajeImpurezas < 5) {
    bonoAdicional = pagoBase * 0.10; // Bono adicional del 10%
  }

  // Calcular el pago final

  double pagoFinal = pagoBase + bonoAdicional;

  // Imprimir resultados
  
  print('--- RESULTADO ---');
  print('Pago base calculado: \$${pagoBase.toStringAsFixed(2)}');
  print('Bono adicional: \$${bonoAdicional.toStringAsFixed(2)}');
  print('Pago final a recibir: \$${pagoFinal.toStringAsFixed(2)}');
}