import 'dart:io';
/*Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico
determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel
de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una
persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta
dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina
su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la
siguiente:
EDAD
NIVEL HEMOGLOBINA
0 - 1 mes13 - 26 g%
> 1 y < = 6 meses10 - 18 g%
> 6 y < = 12 meses11 - 15 g%
> 1 y < = 5 años11.5 - 15 g%
> 5 y < = 10 años12.6 - 15.5 g%
> 10 y < = 15 años13 - 15.5 g%
mujeres > 15 años12 - 16 g%
hombres > 15 años14 - 18 g% 
con condicionales anidados*/

void main() {
  print("Ingrese el nivel de hemoglobina en g%:");
  double hemoglobina = double.parse(stdin.readLineSync()!);
  print("Ingrese la edad de la persona en años:");
  double edad = double.parse(stdin.readLineSync()!);
  print("Ingrese el sexo de la persona (M/F):");
  String sexo = stdin.readLineSync()!.toUpperCase();

  String resultado;

  if (edad <= 1 / 12) { // 0 - 1 mes
    if (hemoglobina < 13) {
      resultado = "Anemia";
    } else if (hemoglobina <= 26) {
      resultado = "Normal";
    } else {
      resultado = "Cardiopatía";
    }
  } else if (edad > 1 / 12 && edad <= 0.5) { // > 1 y <= 6 meses
    if (hemoglobina < 10) {
      resultado = "Anemia";
    } else if (hemoglobina <= 18) {
      resultado = "Normal";
    } else {
      resultado = "Cardiopatía";
    }
  } else if (edad > 0.5 && edad <= 1) { // > 6 y <= 12 meses
    if (hemoglobina < 11) {
      resultado = "Anemia";
    } else if (hemoglobina <= 15) {
      resultado = "Normal";
    } else {
      resultado = "Cardiopatía";
    }
  } else if (edad > 1 && edad <= 5) { // > 1 y <= 5 años
    if (hemoglobina < 11.5) {
      resultado = "Anemia";
    } else if (hemoglobina <= 15) {
      resultado = "Normal";
    } else {
      resultado = "Cardiopatía";
    }
  } else if (edad > 5 && edad <= 10) { // > 5 y <= 10 años
    if (hemoglobina < 12.6) {
      resultado = "Anemia";
    } else if (hemoglobina <= 15.5) {
      resultado = "Normal";
    } else {
      resultado = "Cardiopatía";
    }
  } else if (edad > 10 && edad <= 15) { // > 10 y <= 15 años
    if (hemoglobina < 13) {
      resultado = "Anemia";
    } else if (hemoglobina <= 15.5) {
      resultado = "Normal";
    } else {
      resultado = "Cardiopatía";
    }
  } else { // > 15 años
    if (sexo == "F") {
      if (hemoglobina < 12) {
        resultado = "Anemia";
      } else if (hemoglobina <= 16) {                   
        resultado = "Normal";
      } else {
        resultado = "Cardiopatía";
      }
    } else if (sexo == "M") {
      if (hemoglobina < 14) {
        resultado = "Anemia";
      } else if (hemoglobina <= 18) {
        resultado = "Normal";
      } else {
        resultado = "Cardiopatía";
      }
    } else {
      resultado = "Sexo no válido";
    }
  } 
  print("El resultado es: $resultado"); 
}