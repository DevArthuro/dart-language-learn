import 'dart:async';

final streamController = new StreamController<String>();
final streamControllerErrorStopper = new StreamController<String>();

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

  streamControllerErrorStopper.stream.listen(
    (data) {
      print("data $data");
    },
    onError: (error) {
      print("Error handler error '$error'");
    },
    // Cuando surge un error para la ejecucion
    cancelOnError: true,
  );

  streamControllerErrorStopper.sink.add("Apollo 11");
  streamControllerErrorStopper.sink.add("Apollo 12");
  streamControllerErrorStopper.sink.add("Apollo 13");
  streamControllerErrorStopper.sink.add("Apollo 14");
  streamControllerErrorStopper.sink.addError("error al despegar SOS");
  // Estas dos no se mostrarian
  streamControllerErrorStopper.sink.add("Apollo 15");
  streamControllerErrorStopper.sink.add("Apollo 16");

  // Como ya sabemos que no emitira mas temas por el error siempre debemos cerrar el canal
  streamController.sink.close();
}
