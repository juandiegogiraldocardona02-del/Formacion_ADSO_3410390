import 'dart:io';
/*El sistema de seguridad Industri-ID realiza una doble validación para permitir
el ingreso al complejo del SENA. Primero, solicita el estado de la tarjeta RFID del usuario
(ingrese 1 para Activa, 0 para Inactiva). Si la tarjeta está activa, el sistema hace una 
segunda pregunta internamente para evaluar el rol ("instructor" o "aprendiz"). Si es instructor, 
tiene "Acceso total a todos los bloques". Si es aprendiz, tiene "Acceso limitado a los ambientes de 
formación". Si la tarjeta RFID está inactiva desde el principio, el sistema omite el rol y simplemente
muestra "Acceso Denegado: Tarjeta bloqueada".*/

void main(List<String> arguments) {
  print('--- SISTEMA DE SEGURIDAD INDUSTRI-ID ---');

  // Solicitar el estado de la tarjeta RFID al usuario

  print('Ingrese el estado de su tarjeta RFID (1 para Activa, 0 para Inactiva):');
  int estadoTarjeta = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica

  // Evaluar el acceso según el estado de la tarjeta y el rol del usuario

  String mensajeAcceso;
  if (estadoTarjeta == 1) {
    // Tarjeta activa, solicitar el rol del usuario
    print('Ingrese su rol (instructor o aprendiz):');
    String rol = stdin.readLineSync()?.toLowerCase() ?? 'desconocido'; // Validar entrada de texto y convertir a minúsculas

    if (rol == 'instructor') {
      mensajeAcceso = 'Acceso total a todos los bloques.';
    } else if (rol == 'aprendiz') {
      mensajeAcceso = 'Acceso limitado a los ambientes de formación.';
    } else {
      mensajeAcceso = 'Rol desconocido. Acceso Denegado.';
    }
  } else {
    // Tarjeta inactiva, acceso denegado
    mensajeAcceso = 'Acceso Denegado: Tarjeta bloqueada.';
  }

  // Imprimir resultado
  
  print('--- RESULTADO ---');
  print(mensajeAcceso);
}

