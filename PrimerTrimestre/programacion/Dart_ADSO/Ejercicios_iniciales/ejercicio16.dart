import 'dart:io';

//Juan Diego Rios Giraldo

//Un gimnasio ofrece un descuento del 20% si el cliente paga la anualidad completa (monto > 500.000), de lo contrario el descuento es del 5%. Calcular el total a pagar.

void main(List<String> args) {

  //Definición de variables

  double monto;
  double descuento1 = 0.20, descuento2 = 0.05;
  double des1, des2;
  double total1, total2;

  //Entrada
  
  stdout.writeln("Ingrese el monto que canceló");
  monto = double.parse(stdin.readLineSync()!);

  if (monto > 500000) {
    des1 = monto * descuento1;
    total1 = monto - des1;
    print("Como su monto es mayor a 500.000 se le aplicó un descuento del 20%, por ende el valor total a pagar es de: $total1");
  }else {
    des2 = monto * descuento2;
    total2 = monto - des2;
    print("Como su monto es menor a 500.000 solo se le aplicó un descuento del 5%, por ende el valor total a pagar es de: $total2");
  }
}