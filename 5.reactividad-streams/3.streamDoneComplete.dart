import 'dart:async';

/**
 * Dentro del steam tenemos tambien forma de enterarnos cuando se termine de escuchar eventos 
 */

final streamExampleEveryCycle = new StreamController<String>();
void main() {
  streamExampleEveryCycle.stream.listen(
    (data) {
      print("[Event] $data");
    },
    onError: (error) {
      print("[Error] $error");
    },
    onDone: () {
      print("[Completed]");
    },
  );

  streamExampleEveryCycle.sink.add("Apolo 11");
  streamExampleEveryCycle.sink.add("Apolo 12");
  streamExampleEveryCycle.sink.add("Apolo 13");
  streamExampleEveryCycle.sink.add("Apolo 14");

  streamExampleEveryCycle.sink.addError("S.O.S Apolo 14");

  // Por defecto el continua ejecutando
  streamExampleEveryCycle.sink.add("Apolo 15");
  streamExampleEveryCycle.sink.add("Apolo 16");

  // Esto detona el callback de onDone
  streamExampleEveryCycle.sink.close();
}
