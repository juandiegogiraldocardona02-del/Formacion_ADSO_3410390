import 'dart:io';
/*Dado tres números calcular el mayor de ellos con condicionales anidados*/

void main() {
  print("Ingrese el primer número:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);
  print("Ingrese el tercer número:");
  double num3 = double.parse(stdin.readLineSync()!);

  double mayor;

  if (num1 >= num2) {
    if (num1 >= num3) {
      mayor = num1;
    } else {
      mayor = num3;
    }
  } else {
    if (num2 >= num3) {
      mayor = num2;
    } else {
      mayor = num3;
    }
  }

  print("El número mayor es: $mayor");
}