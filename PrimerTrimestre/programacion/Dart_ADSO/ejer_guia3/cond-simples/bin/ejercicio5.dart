import 'dart:io';
void main(List<String> arguments) {
/*
Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de
 $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más. 
 */
stdout.writeln('Ejercicio 5: Condicionales Simples');
int cantidad;
double precioUnitario, totalPagar;
//ENTRADA
stdout.writeln('Ingrese la cantidad de llantas a comprar:');
cantidad = int.parse(stdin.readLineSync()!);
//PROCESO
if (cantidad < 5) {
  precioUnitario = 80000;
} else {
  precioUnitario = 70000;
}
totalPagar = precioUnitario * cantidad;
//SALIDA
stdout.writeln('El precio unitario de cada llanta es: \$$precioUnitario');
stdout.writeln('La cantidad de llantas a comprar es: $cantidad');
stdout.writeln('El total a pagar por las llantas es: \$$totalPagar');
}