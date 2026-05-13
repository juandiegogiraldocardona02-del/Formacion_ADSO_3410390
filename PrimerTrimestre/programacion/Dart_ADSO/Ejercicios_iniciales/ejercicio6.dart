import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir el precio de un producto y mostrar el valor del IVA (19%) y el precio total con impuesto.

void main(List<String> args) {

  //Definición de variables

  double precioProducto;
  double valorIva ;
  double precioTotal; 
  
  //Entrada

  print("Ingrese el precio del producto");
  precioProducto = double.parse(stdin.readLineSync()!);
  print("Este producto tendra un impuesto de iva del 19%.");

  //Proceso

  valorIva = precioProducto * 0.19;
  precioTotal = precioProducto + valorIva;

  //Salida
  
  print("El precio total a pagar es de: $precioTotal");
}