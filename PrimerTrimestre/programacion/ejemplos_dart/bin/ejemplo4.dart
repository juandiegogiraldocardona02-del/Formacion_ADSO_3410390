// Condicionales

// Condicional simple
void main(List<String> args) {
  int edad = 18;
  if (edad >= 18) {
    print("Acceso permitido");
  }
  // Condicional doble
  double valorNota;
  valorNota = 3.8;
  if (valorNota < 3) {
    print('no aprueba la nota');
  } else {
    print('aprueba la nota');
  }

  // Condicional anidado
  bool tieneCuenta = true;
  double saldo = 450000;
  if (tieneCuenta == true) {
    // Se valida si el usuario tiene cuenta
    if (saldo >= 100000) {
      // Se valida si el saldo es mayor o igual a 100000
      print('Puede retirar dinero');
    } else {
      print('no puede retirar dinero');
    }
  } else {
    print('Usted no tiene cuenta en este banco');
  }

  // Condicional Multiple
  String dia = 'martes';
  switch (dia){
    case 'Lunes':
    print('todos hacen el aseo');
    break;
    case 'martes':
    print('Dejar el repositorio Full en GitHub');
    break;
    case 'Miercoles':
    print('Entrega de evidencias');sudo apt-get update -y && sudo apt-get upgrade -y
    
    break;
    case 'Sabado':
    case 'Domingo':
    print('No hay formacion');
    break;
    default:
    print('Dia normal de formacion');
    }
}