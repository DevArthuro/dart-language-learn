import  "dart:io";

main() {

  stdout.writeln("Diga una base de la tabla de multiplicar");

  int base = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 1; i <= 10; i++) {
    print("$base x $i = ${base * i}");
  }
}