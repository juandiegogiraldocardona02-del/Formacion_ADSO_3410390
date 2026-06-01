import 'dart:io';
/*Una academia de música cobra $35.000 por clase individual. Si un estudiante inscribe entre 
4 y 7 clases para el mes, recibe un 10% de descuento sobre el subtotal. Si inscribe 8 o más clases, 
se le mostrará un mensaje que tiene derecho a 2 boletas para un concierto. Solicite la cantidad de clases,
 calcule el subtotal y utilice condicionales para aplicar el descuento si corresponde. 
 Muestre el total a pagar.*/

void main(List<String> arguments) {
  print('--- CALCULO DE PAGO PARA CLASES DE MÚSICA ---');

  // Solicitar datos al usuario

  print('Ingrese la cantidad de clases inscritas para el mes:');
  int clases = int.parse(stdin.readLineSync()??'0');

  // Calcular el subtotal

  double precioClase = 35000.0;
  double subtotal = clases * precioClase;

  // Verificar si se aplica descuento o se otorgan boletas

  double descuento = 0.0;
  String mensajeBoletas = '';
  
  if (clases >= 4 && clases <= 7) {
    descuento = subtotal * 0.10; // Descuento del 10%
  } else if (clases >= 8) {
    mensajeBoletas = 'Tiene derecho a 2 boletas para un concierto.';
    } else {
      print("No se aplica descuento ni boletas para menos de 4 clases.");
    }

  // Calcular el total a pagar

  double totalPagar = subtotal - descuento;

  // Imprimir resultados
  
  print('--- RESULTADO ---');
  print('Subtotal calculado: \$${subtotal.toStringAsFixed(2)}');
  
  if (descuento > 0) {
    print('Descuento aplicado: \$${descuento.toStringAsFixed(2)}');
  }
  
  print('Total a pagar: \$${totalPagar.toStringAsFixed(2)}');
  
  if (mensajeBoletas.isNotEmpty) {
    print(mensajeBoletas);
  }
}