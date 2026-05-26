import 'dart:io';
void main(List<String> arguments) {
/*El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran
en el año 2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta.
Las personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años.
Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una antigüedad
en su empleo de 25 años o más. 
*/
stdout.writeln('Ejercicio 2: Condicionales Simples');
int edad, antiguedad;

//ENTRADA

stdout.writeln('Ingrese la edad del empleado:');
edad = int.parse(stdin.readLineSync()!);
stdout.writeln('Ingrese la antigüedad del empleado:');
antiguedad = int.parse(stdin.readLineSync()!);

//PROCESO y SALIDA

if (edad >= 60 && antiguedad < 25) {
  stdout.writeln('El empleado se jubilará por edad');
} else if (edad < 60 && antiguedad >= 25) {
  stdout.writeln('El empleado se jubilará por antigüedad joven');
} else {
  stdout.writeln('El empleado no se jubilará por ninguna de las categorías');
}
}