import 'dart:io';

//Juan Diego Rios Giraldo

//Un gimnasio ofrece un descuento del 20% si el cliente paga la anualidad 
//completa (monto > 500.000), de lo contrario el descuento es del 5%.
// Calcular el total a pagar.

void main(List<String> args) {

  //Definicion de variables

  double monto;
  double descuento1 = 0.20, descuento2 = 0.05;
  double des1, des2, total1, total2;

  //Entrada
  
  stdout.writeln("Ingrese el monto pagado");
  monto = double.parse(stdin.readLineSync()!);

  if (monto > 500000) {

    des1 = monto * descuento1;

    total1 = monto - des1;

    print("Su monto es mayor a 500.000 entonces se le aplicó un descuento del 20%, por lo cual el valor total a pagar es de: $total1");

  }else {

    des2 = monto * descuento2;

    total2 = monto - des2;

    print("Su monto es menor a 500.000 entonces se le aplicó un descuento del 5%, por lo cual el valor total a pagar es de: $total2");
  }
}