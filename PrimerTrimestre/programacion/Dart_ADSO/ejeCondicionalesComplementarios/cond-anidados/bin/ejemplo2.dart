import 'dart:io';
/*Un concesionario está cotizando el nuevo Volkswagen Nivus 2026. Primero,
el sistema pregunta el método de pago del cliente (ingrese "contado" o "credito").
a. Si el cliente paga de contado, el sistema anida una nueva condición: si el valor 
del vehículo supera los $110.000.000, se otorga un descuento del 5%. Si es menor o igual,
se otorga un 2%. b. Si el cliente paga a crédito, el sistema anida una validación diferente:
pregunta a cuántos meses es el plazo. Si el plazo es mayor a 60 meses, la tasa de interés mensual
es del 1.5%. Si es de 60 meses o menos, la tasa es del 1.2%. Desarrolle el algoritmo que capture 
el precio base del vehículo y ejecute la lógica correspondiente para informar al cliente las
condiciones finales.*/

void main(List<String> arguments) {
  print('--- COTIZACIÓN DEL VOLKSWAGEN NIVUS 2026 ---');

  // Solicitar el método de pago al cliente

  print('Ingrese el método de pago (contado o crédito):');
  String metodoPago = stdin.readLineSync()?.toLowerCase() ?? 'desconocido'; // Validar entrada de texto y convertir a minúsculas

  // Solicitar el precio base del vehículo

  print('Ingrese el precio base del vehículo (en pesos):');
  double precioBase = double.parse(stdin.readLineSync()??'0.0'); // Validar entrada numérica

  // Determinar las condiciones finales según el método de pago

  String mensajeFinal;
  if (metodoPago == 'contado') {
    // Método de pago contado, evaluar el descuento
    double descuento;
    if (precioBase > 110000000) {
      descuento = precioBase * 0.05; // Descuento del 5%
      mensajeFinal = 'Descuento aplicado: 5%';
    } else {
      descuento = precioBase * 0.02; // Descuento del 2%
      mensajeFinal = 'Descuento aplicado: 2%';
    }
    double precioFinal = precioBase - descuento;
    mensajeFinal += '\nPrecio final a pagar: ${precioFinal.toStringAsFixed(2)} pesos.';
  } else if (metodoPago == 'crédito') {
    // Método de pago crédito, evaluar la tasa de interés
    print('Ingrese el plazo en meses para el crédito:');
    int plazoMeses = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica

    double tasaInteres;
    if (plazoMeses > 60) {
      tasaInteres = 1.5; // Tasa de interés mensual del 1.5%
      mensajeFinal = 'Tasa de interés aplicada: 1.5% mensual';
    } else {
      tasaInteres = 1.2; // Tasa de interés mensual del 1.2%
      mensajeFinal = 'Tasa de interés aplicada: 1.2% mensual';
    }
    double interesTotal = (tasaInteres / 100) * precioBase * plazoMeses;
    double precioFinalCredito = precioBase + interesTotal;
    mensajeFinal += '\nPrecio final a pagar con crédito: ${precioFinalCredito.toStringAsFixed(2)} pesos.';
  } else {
    mensajeFinal = 'Método de pago desconocido. No se pueden calcular las condiciones finales.';
  }
  print(mensajeFinal);
}