import 'dart:io';
import 'package:path/path.dart' as p;

void main() {
  String pathPersonasFile = p.join(
    Directory.current.path,
    '4.tipos-avanzados',
    'assets',
    'personas.txt',
  );

  File file = new File(pathPersonasFile);

  // Se resuelve el Future mientras el programa espera
  String personas = file.readAsStringSync();

  print(personas);
}
