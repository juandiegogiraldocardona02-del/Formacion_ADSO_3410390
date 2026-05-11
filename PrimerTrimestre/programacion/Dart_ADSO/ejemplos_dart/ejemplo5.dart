// Operadores Logicos

// Operador And

void main(List<String> args) {
  bool tieneCarnet = false;
  int edad = 25;

  // Condicion: para ingresar. ser mayor de edad y tener carnet

  if(tieneCarnet == true &&  edad>=18){
  print('Bienvenido al cetro de formacion');
  }else{
    print('no se cumple con los requisitos de acceso');
  }

  // Operador OR
  bool esFestivo = true;
  bool esSabado = false;

  // condicion: si es sabado o es festivo no hay formacion
  if(esFestivo == true || esSabado == true){
    print('No hay formacion');
  }else{
print('Si hay formacion');
  }

  // Operador NOT
  bool sistemaCaido = true; // Sistema caido

  // ignore: dead_code
  if(!sistemaCaido){// Se pregunta si el sistema no esta caido
    print('EL sistema no esta caido');
  }else{
    print('El sistema esta caido');
  }

  // Operadores combinados
  // Aprueba si (Entrego y saco mas de 3.5)
  // O tiene una excusa valida y puede presentar de nuevo el examen
  double nota = 3.4;
  bool entrego = false;
  bool excusaValida = true;

  if( (entrego == true && nota >= 3.5) || excusaValida == true){
    if(entrego == true){ // Si entrgo el examen
    if(nota >= 3.5){
      print('Aprueba el examen');
    }
  }else{ // no entrego el examen 
    if(excusaValida == true){
      print('puede presentar el examen en otra fecha');
    }else{
      print('No puede presentar el examen');
  }
}
}else{
  print('no aprueba ni presenta el examen');
  }
}