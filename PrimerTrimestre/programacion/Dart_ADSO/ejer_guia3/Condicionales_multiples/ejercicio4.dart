import 'dart:io';
import 'dart:math';
/*Calcular el valor de f(x) según la expresión
x^2Si x mod 4 = 0
x/6Si x mod 4 = 1
Raiz(x)Si x mod 4 = 2
X^3+5Si x mod 4 = 3. con condicionales múltiples.*/

void main() {
  print("Ingrese el valor de x:");
  int x = int.parse(stdin.readLineSync()!);

  double resultado = 0;

  switch (x % 4) {
    case 0:
      resultado = (x * x) as double;
      break;
    case 1:
      resultado = (x / 6);
      break;
    case 2:
      resultado = sqrt(x);
      break;
    case 3:
      resultado = (x * x * x) + 5;
      break;
    default:
      print("Error en el cálculo.");
      return;
  }

  print("El resultado de f(x) es: $resultado");
}