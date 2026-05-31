import 'dart:io';
/*La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus
clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:
Si el cliente es de la categoría 1 se le descuenta el 5%
Si el cliente es de la categoría 2 se le descuenta el 8%
Si el cliente de de la categoría 3 se le descuenta el 12%
Si el cliente es de la categoría 4 se le descuenta el 15%
Cuando el cliente realiza una compra se generan los siguientes datos:
Nombre del cliente
Tipo de cliente
Cantidad comprada de escobas, recogedores y aromatizantes.
Los precios de estos elementos son.
• Escobas. 3000.
• Recogedores. 2000
• Aromatizantes. 1000
Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:
Nombre del cliente
Subtotal a pagar
Descuento
Total a pagar. con condicionales múltiples.*/

void main() {
  print("Ingrese el nombre del cliente:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el tipo de cliente (1, 2, 3 o 4):");
  int tipoCliente = int.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad comprada de escobas:");
  int cantidadEscobas = int.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad comprada de recogedores:");
  int cantidadRecogedores = int.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad comprada de aromatizantes:");
  int cantidadAromatizantes = int.parse(stdin.readLineSync()!);

  // Precios
  const double precioEscoba = 3000;
  const double precioRecogedor = 2000;
  const double precioAromatizante = 1000;

  // Cálculo del subtotal
  double subtotal = (cantidadEscobas * precioEscoba) +
      (cantidadRecogedores * precioRecogedor) +
      (cantidadAromatizantes * precioAromatizante);

  // Cálculo del descuento
  double descuento = 0;
  switch (tipoCliente) {
    case 1:
      descuento = subtotal * 0.05;
      break;
    case 2:
      descuento = subtotal * 0.08;
      break;
    case 3:
      descuento = subtotal * 0.12;
      break;
    case 4:
      descuento = subtotal * 0.15;
      break;
    default:
      print("Tipo de cliente no válido.");
      return;
  }

  // Cálculo del total a pagar
  double totalPagar = subtotal - descuento;

  // Mostrar resultados
  print("\nNombre del cliente: $nombre");
  print("Subtotal a pagar: \$${subtotal.toStringAsFixed(2)}");
  print("Descuento: \$${descuento.toStringAsFixed(2)}");
  print("Total a pagar: \$${totalPagar.toStringAsFixed(2)}");
}