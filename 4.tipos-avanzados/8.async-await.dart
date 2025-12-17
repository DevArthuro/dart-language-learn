import 'dart:io';

import 'package:path/path.dart' as p;

void main() async {
  print("\nEjemplo 1");
  // Incontrolable forma de manejar las promesas ya que dependemos de que dice el then
  Future<String> readFile = leerArchivo();
  print("Leer");
  readFile.then(print);

  print("\nEjemplo 2");
  // Le decimos al software que espere que se lea el archivo y sigue ejecutando
  String readFileSync = await leerArchivo();
  print(readFileSync);
  print("\nFin del programa\n");
}

Future<String> leerArchivo() async {
  String pathResolved = await path("personas.txt");

  File file = new File(pathResolved);

  return file.readAsString();
}

// Podemos convertir un dato que no necesariamente es un Future en un Future y que sea una promesa
Future<String> path(String fileAssets) async =>
    p.join(Directory.current.path, '4.tipos-avanzados', 'assets', fileAssets);
