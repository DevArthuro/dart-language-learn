import 'dart:async';

/**
 * Los streams en flutter es basicamente como un reactividad observable si hacemos
 * La analogia, es como un flujo de datos al que podemos reaccionar desde cualquier parte de la aplicación
 * podemos tanto abrir de 1 a varios canales
 * podemos tanto escuchar,  recibir, emitir errores, detener o continuar si hay errores y ejecutar un completado
 */

void main() {
  final streamController = new StreamController();

  streamController.stream.listen((data) {
    print("Despegando $data");
  });

  streamController.sink.add("Apolo 11");

  print("Fin del main");
}
