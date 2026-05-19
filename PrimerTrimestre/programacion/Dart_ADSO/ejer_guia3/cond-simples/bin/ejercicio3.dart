import 'dart:io';
void main(List<String> arguments) {
/*
El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días
 para sus clientes, de tal manera que si un cliente ordena un traje se captura 
 el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le 
 hace un descuento del 17%, si no se le cobra al precio normal.
 */
stdout.writeln('Ejercicio 3: Condicionales Simples');
String? modelo;
double precioUnitario, precioTotal, descuento;
int cantidad;
//ENTRADA
stdout.writeln('Ingrese el modelo del traje:');
modelo = stdin.readLineSync();
stdout.writeln('Ingrese el precio unitario del traje:');
precioUnitario = double.parse(stdin.readLineSync()!);
stdout.writeln('Ingrese la cantidad de trajes ordenados:');
cantidad = int.parse(stdin.readLineSync()!);
//PROCESO
precioTotal = precioUnitario * cantidad;
if (cantidad >= 3) {
  descuento = precioTotal * 0.17;
  precioTotal = precioTotal - descuento; //precioTotal = precioTotal - descuento
}
//SALIDA
stdout.writeln('El cliente ordenó $cantidad trajes del modelo "$modelo", con un precio unitario de \$$precioUnitario, el precio total a pagar es: \$$precioTotal');
}