import 'dart:io';
void main(List<String> arguments) {
/*Una compañía de seguros esta abriendo un depto. 
de finanzas y estableció un programa para captar clientes,
 que consiste en lo siguiente: Si el monto por el que se efectúa la fianza 
 es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto 
 es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea 
 determinar cual será la cuota que debe pagar un cliente.
*/

stdout.writeln('Ejercicio 7: Condicionales Simples');
double montoFianza, cuotaPagar;

//ENTRADA

stdout.writeln('Ingrese el monto por el que se efectúa la fianza:');
montoFianza = double.parse(stdin.readLineSync()!);

//PROCESO

if (montoFianza < 50000) {
  cuotaPagar = montoFianza * 0.03;
} else {
  cuotaPagar = montoFianza * 0.02;
}

//SALIDA

stdout.writeln('El monto de la fianza es: \$$montoFianza');
stdout.writeln('La cuota a pagar por el cliente es: \$$cuotaPagar');
}