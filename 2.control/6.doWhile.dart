import "dart:io";

main() {
  String continuar = "y";
  int counter = 0;

  do {
    print("EL CONTADOR ES: $counter");
    counter++;

    stdout.writeln(
      "Si quieres seguir escribe (y) si quieres salir escribe (n)",
    );
    continuar = stdin.readLineSync() ?? "y";
  } while (continuar == "y");
}
