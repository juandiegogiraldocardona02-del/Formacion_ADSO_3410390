import 'dart:io';
/*El sistema de seguridad Industri-ID realiza una validación exhaustiva para el ingreso 
al complejo del SENA. a. Primer nivel: Solicita el estado de la tarjeta RFID (1 para Activa,
0 para Inactiva). Si está inactiva, bloquea el acceso inmediatamente sin preguntar más datos.
b. Segundo nivel: Si la tarjeta está activa, solicita el rol del usuario ("instructor",
"administrativo" o "aprendiz"). i. Si es "instructor" o "administrativo", se le concede acceso 
total de forma inmediata (acceso 24/7). ii. Si es "aprendiz", el sistema debe hacer una validación 
adicional. c. Tercer nivel (Anidado dentro de aprendiz): El sistema solicita ingresar la hora 
actual en formato militar (0 a 23). Si la hora está entre las 6 y las 18 (6:00 AM a 6:00 PM),
se le permite el ingreso a los ambientes de formación. Si está fuera de ese rango,
se le deniega el acceso por horario no autorizado. Desarrolle el algoritmo utilizando
condicionales anidados para resolver esta lógica de seguridad.*/

void main(List<String> arguments) {
  print('--- SISTEMA DE SEGURIDAD INDUSTRI-ID ---');

  // Solicitar el estado de la tarjeta RFID al usuario

  print('Ingrese el estado de su tarjeta RFID (1 para Activa, 0 para Inactiva):');
  int estadoTarjeta = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica

  // Evaluar el acceso según el estado de la tarjeta y el rol del usuario

  String mensajeAcceso;
  if (estadoTarjeta == 1) {
    // Tarjeta activa, solicitar el rol del usuario
    print('Ingrese su rol (instructor, administrativo o aprendiz):');
    String rol = stdin.readLineSync()?.toLowerCase() ?? 'desconocido'; // Validar entrada de texto y convertir a minúsculas

    if (rol == 'instructor' || rol == 'administrativo') {
      mensajeAcceso = 'Acceso total concedido. Puede ingresar al complejo las 24 horas del día.';
    } else if (rol == 'aprendiz') {
      // Rol aprendiz, solicitar la hora actual
      print('Ingrese la hora actual en formato militar (0 a 23):');
      int horaActual = int.parse(stdin.readLineSync()??'0'); // Validar entrada numérica

      if (horaActual >= 6 && horaActual <= 18) {
        mensajeAcceso = 'Acceso permitido. Puede ingresar a los ambientes de formación.';
      } else {
        mensajeAcceso = 'Acceso denegado por horario no autorizado. El ingreso está permitido solo entre las 6:00 AM y las 6:00 PM.';
      }
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
