import 'dart:io';
/*En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de
descuento. El precio de cada computadora es de $1100000 con condiciones anidadas*/

void main() {
  print("Ingrese el número de computadoras que desea comprar:");
  int numComputadoras = int.parse(stdin.readLineSync()!);
  double precioUnitario = 1100000;
  double totalCompra = numComputadoras * precioUnitario;
  double descuento = 0;

  if (numComputadoras < 5) {
    descuento = totalCompra * 0.1;
  } else {
    if (numComputadoras < 10) {
      descuento = totalCompra * 0.2;
    } else {
      descuento = totalCompra * 0.4;
    }
  }

  print("El descuento es: $descuento");
}