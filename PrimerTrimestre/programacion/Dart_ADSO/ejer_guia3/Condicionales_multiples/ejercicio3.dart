import 'dart:io';
/*Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:
Val
Num
100 * v1
100^v2
100/v3
0Cualquier número.con condicionales múltiples.*/

void main() {
  print("Ingrese el valor de v1:");
  int v1 = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de v2:");
  int v2 = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de v3:");
  int v3 = int.parse(stdin.readLineSync()!);

  double resultado = 0;

  if (v1 > 0 && v2 > 0 && v3 > 0) {
    resultado = (100 * v1) + (100 * (v2 * v2)) + (100 / v3);
    print("El resultado es: $resultado");
  } else {
    print("Todos los valores deben ser mayores que cero.");
  }
}

