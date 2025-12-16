import 'dart:io';
// Este paquete es para evitar tener que diferenciar entre sistema operativo
import 'package:path/path.dart' as p;

void main() {
  String currentPath = Directory.current.path;

  String pathPersonas =
      p.join(currentPath, '4.tipos-avanzados', 'assets', 'personas.txt');

  File file = new File(pathPersonas);

  Future readFile = file.readAsString();

  print("Esto se ejecuta antes");
  readFile.then(print);
  print("Esto se ejecuta antes 2");
}
