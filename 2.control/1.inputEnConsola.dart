import 'dart:io';

main() {
  stdout.writeln("¿Cuál es tu nombre?");
  String? name = stdin.readLineSync();

  stdout.writeln("Empecemos la evaluación de edad");
  
  stdout.writeln("Digita tu edad");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 21) {
    print("Tu $name eres ciudadano");
  } else if (edad >= 18 && edad <= 20) {
    print("Tu $name eres mayor de edad");
  } else {
    print("Tu $name eres menor de edad");
  }
}