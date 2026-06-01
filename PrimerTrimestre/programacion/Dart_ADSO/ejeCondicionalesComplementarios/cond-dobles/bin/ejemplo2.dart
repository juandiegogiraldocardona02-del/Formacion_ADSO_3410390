import 'dart:io';
/*Un propietario necesita calcular el impuesto anual de su vehículo.
Las normativas f iscales establecen que los vehículos cuyo avalúo comercial 
supere los $150.000.000 (considerados de gama alta o lujo) deben pagar una tarifa 
del 2.5% sobre dicho valor. Por el contrario, los vehículos con un avalúo igual o menor
a este límite pagan una tarifa del 1.5%. Solicite la marca/modelo del vehículo y
su avalúo comercial actual. Determine cuál es el porcentaje aplicado y calcule el 
valor total del impuesto a pagar este año.*/

void main(List<String> arguments) {
  print('--- CÁLCULO DE IMPUESTO ANUAL DE VEHÍCULO ---');

  // Solicitar datos al usuario

  print('Ingrese la marca y modelo del vehículo:');
  String marcaModelo = stdin.readLineSync()??'Desconocido'; // Validar entrada de texto

  print('Ingrese el avalúo comercial actual del vehículo (en pesos):');
  double avaluoComercial = double.parse(stdin.readLineSync()??'0.0'); // Validar entrada numérica

  // Determinar el porcentaje aplicado según el avalúo comercial

  double porcentajeImpuesto;
  if (avaluoComercial > 150000000) {
    porcentajeImpuesto = 2.5; // Tarifa para vehículos de gama alta o lujo
  } else {
    porcentajeImpuesto = 1.5; // Tarifa para vehículos con avalúo igual o menor a $150.000.000
  }

  // Calcular el valor total del impuesto a pagar

  double impuestoAnual = (porcentajeImpuesto / 100) * avaluoComercial;

  // Imprimir resultados
  
  print('--- RESULTADO ---');
  print('El vehículo $marcaModelo tiene un avalúo comercial de ${avaluoComercial.toStringAsFixed(2)} pesos.');
  print('El porcentaje de impuesto aplicado es del ${porcentajeImpuesto.toStringAsFixed(2)}%.');
  print('El valor total del impuesto a pagar este año es de ${impuestoAnual.toStringAsFixed(2)} pesos.');
}

