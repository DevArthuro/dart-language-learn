import 'dart:async';

final streamController = new StreamController<String>();

void main() {
  streamController.stream.listen((data) {
    print("Despegando $data");
  }, onError: (error) => {print("Error handler '$error'")});

  streamController.sink.add("Apollo 11");
  streamController.sink.add("Apollo 12");
  streamController.sink.add("Apollo 13");
  streamController.sink.add("Apollo 14");
  streamController.sink.addError("error al despegar SOS");
  streamController.sink.add("Apollo 15");
}
