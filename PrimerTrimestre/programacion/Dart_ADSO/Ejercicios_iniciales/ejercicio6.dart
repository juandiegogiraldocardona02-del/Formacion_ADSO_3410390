import 'dart:io';

//Juan Diego Rios Giraldo

//Pedir el precio de un producto y mostrar el valor del IVA (19%) y el precio total con impuesto.

void main(List<String> args) {

  //Definición de variables

  double producto;
  double Iva;
  double Total; 
  
  //Entrada

  print("Ingrese el precio del producto");
  producto = double.parse(stdin.readLineSync()!);

  print("Ha este producto se le aplicara un impuesto del iva perteneciente al 19%.");

  //Proceso

  Iva = producto * 0.19;
  Total = producto + Iva;

  //Salida
  
  print("Su total a pagar es de: $Total");
}