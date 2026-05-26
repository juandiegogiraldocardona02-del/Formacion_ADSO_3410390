import 'dart:io';
/*Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del
comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se
distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
La empresa quiere saber cuanto debe pagar*/

void main(List<String> arguments) {
  stdout.writeln('Ejercicio 4: Condicionales Dobles');
  double ingresosComprador, costoCasa, cuotaInicial, montoFinanciar, pagoMensual;
  int mesesPago;

  //ENTRADA

  stdout.writeln('Ingrese los ingresos del comprador:');
  ingresosComprador = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese el costo de la casa:');
  costoCasa = double.parse(stdin.readLineSync()!);

  //PROCESO

  if (ingresosComprador >= 800000) {
    cuotaInicial = costoCasa * 0.15;
    montoFinanciar = costoCasa - cuotaInicial;
    mesesPago = 10 * 12; //10 años * 12 meses por año
    pagoMensual = montoFinanciar / mesesPago;
  } else {
    cuotaInicial = costoCasa * 0.30;
    montoFinanciar = costoCasa - cuotaInicial;
    mesesPago = 7 * 12; //7 años * 12 meses por año
    pagoMensual = montoFinanciar / mesesPago;
  }

  //SALIDA
  
  stdout.writeln('La cuota inicial a pagar es: \$$cuotaInicial');
  stdout.writeln('El monto a financiar es: \$$montoFinanciar');
  stdout.writeln('El pago mensual durante $mesesPago meses será: \$$pagoMensual');
}