import 'dart:io';
/*Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume con condicionales anidados*/

void main() {
  print("Ingrese el primer número:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);

  double resultado;

  if (num1 == num2) {
    resultado = num1 * num2;
  } else {
    if (num1 > num2) {
      resultado = num1 - num2;
    } else {
      resultado = num1 + num2;
    }
  }

  print("El resultado es: $resultado");
}