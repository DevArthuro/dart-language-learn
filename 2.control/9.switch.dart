import 'dart:io';
import 'dart:math';

void main() {
  int numberRandom = Random().nextInt(10);
  int numberUser = giveNumberUser();

  String text = "";

  if (numberRandom == numberUser) {
    text = "win";
  } else {
    text = "wrong";
  }

  switch (text) {
    case "win":
      print("La rompiste $numberRandom");
      break;
    case "wrong":
      print("La rebento el numero era $numberRandom");
      break;
    default:
      print("desconocida opcion");
  }
}

int giveNumberUser() {
  stdout.writeln("Escribe un número del 1 al 10");
  int number = int.parse(stdin.readLineSync()!);
  return number;
}
