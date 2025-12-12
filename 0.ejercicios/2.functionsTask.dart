import 'dart:io';

main() {
  stdout.writeln('=========== Usuario 1 =============');

  final Map<String, dynamic> usuario = registerUser(1500);

  stdout.writeln(usuario);

  // Persona 2
  stdout.writeln('=========== Usuario 2 =============');

  final Map<String, dynamic> usuario2 = registerUser(1800);

  stdout.writeln(usuario2);
}

String enterWithKeyboard(String question) {
  stdout.writeln(question);
  String value = stdin.readLineSync() ?? '';
  return value;
}

Map<String, dynamic> registerUser(double salary) {
  String nombre = enterWithKeyboard('¿Cúal es su nombre?');

  String edad = enterWithKeyboard('¿Qué edad tienes?');

  String pais = enterWithKeyboard('¿En qué país naciste?');

  return {
    'nombre': nombre,
    'edad': edad,
    'pais': pais,
    ...calculateDeductions(salary),
  };
}

Map<String, dynamic> calculateDeductions(double salary) {
  double deducciones = salary * 0.15;
  double salarioNeto = salary - deducciones;

  return {
    "salario": salary,
    "deducciones": deducciones,
    "salarioNeto": salarioNeto,
  };
}
