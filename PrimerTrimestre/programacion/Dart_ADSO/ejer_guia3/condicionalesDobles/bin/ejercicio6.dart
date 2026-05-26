import 'dart:io';
/*El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la
superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
Porcentaje de la superficie del bosqueTipo de árbol
70%Pino
20%Roble
10%Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la
sig. manera:
Porcentaje de la superficie del bosqueTipo de árbol
50%Pino
30%Roble
20%Cedro
El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe
que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados
caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.
*/

void main(List<String> arguments) {
  stdout.writeln('Ejercicio 6: Condicionales Dobles');
  double superficieHectareas, superficieMetros, pinos, robles, cedros;

  //ENTRADA

  stdout.writeln('Ingrese la superficie del terreno en hectáreas:');
  superficieHectareas = double.parse(stdin.readLineSync()!);

  //PROCESO

  superficieMetros = superficieHectareas * 10000; //Convertir hectáreas a metros cuadrados
  if (superficieMetros > 1000000) {
    pinos = (superficieMetros * 0.70) / 10 * 8; //70% para pinos, 10 m² por cada 8 pinos
    robles = (superficieMetros * 0.20) / 15 * 15; //20% para robles, 15 m² por cada 15 robles
    cedros = (superficieMetros * 0.10) / 18 * 10; //10% para cedros, 18 m² por cada 10 cedros
  } else {
    pinos = (superficieMetros * 0.50) / 10 * 8; //50% para pinos, 10 m² por cada 8 pinos
    robles = (superficieMetros * 0.30) / 15 * 15; //30% para robles, 15 m² por cada 15 robles
    cedros = (superficieMetros * 0.20) / 18 * 10; //20% para cedros, 18 m² por cada 10 cedros

  }
  //SALIDA
  
  stdout.writeln('Número de pinos a sembrar: ${pinos.toInt()}');
  stdout.writeln('Número de robles a sembrar: ${robles.toInt()}');
  stdout.writeln('Número de cedros a sembrar: ${cedros.toInt()}');
}