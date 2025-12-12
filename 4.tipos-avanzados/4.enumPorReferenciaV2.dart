import 'dart:io';

void main() {
  parent:
  while (true) {
    int volumenUser = getUserVolumenByKeyBoard(
      'Escribe el volumen\n(0).volumen bajo\n(1).volumen medio\n(2).volumen alto\n(3).salir',
    );

    if (volumenUser == 3) {
      break parent;
    }

    Volumen parseVolumen = getVolumenByUser(volumenUser);

    String userVolumenParsed = getVolumen(volume: parseVolumen);

    print("Su volumen es $userVolumenParsed");
  }
}

String getVolumen({required Volumen volume}) {
  switch (volume) {
    case Volumen.bajo:
      return 'Bajo';
    case Volumen.medio:
      return 'Medio';
    case Volumen.alto:
      return 'Alto';
  }
}

Volumen getVolumenByUser(int userVolumen) {
  switch (userVolumen) {
    case 0:
      return Volumen.bajo;
    case 1:
      return Volumen.medio;
    case 2:
      return Volumen.alto;
    default:
      return Volumen.bajo;
  }
}

int getUserVolumenByKeyBoard(String message) {
  stdout.writeln(message);
  int volmenUser = int.parse(stdin.readLineSync() ?? '0');

  return volmenUser;
}

enum Volumen {
  bajo('BAJO'),
  medio('MEDIO'),
  alto('ALTO');

  final String nivel;

  const Volumen(this.nivel);
}
