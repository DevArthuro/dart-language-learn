import 'dart:async';
import 'dart:io';

// Invocando el metodo de broadcast ya habilitamos que puedan conectarse varios listeners
final streamBroadcast = new StreamController<int>.broadcast();
int multiply = 1;
int addition = 0;

void main() {
  suscriptionAddition();
  suscriptionMultiply();

  int counter = 2;

  principalWhile:
  while (true) {
    stdout.writeln("Escibe un número que se sumara y multiplicara");
    int number = int.parse(stdin.readLineSync() ?? '0');

    streamBroadcast.sink.add(number);

    if (counter <= 0) {
      streamBroadcast.sink.close();
      break principalWhile;
    }
    counter--;
  }
}

void suscriptionMultiply() {
  streamBroadcast.stream.listen(
    (data) {
      multiply *= data;
    },
    onError: (error) {
      print("[Error] $error");
    },
    onDone: () {
      print("[Completed]\nMultiplicación: ${multiply}");
    },
  );
}

void suscriptionAddition() {
  streamBroadcast.stream.listen(
    (data) {
      addition += data;
    },
    onError: (error) {
      print("[Error] $error");
    },
    onDone: () => {print("[Completed]\nSuma: ${addition}")},
  );
}
