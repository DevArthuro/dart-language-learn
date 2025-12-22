import 'dart:async';

void main() {
  getInfoApi()
      // Si el stream no responde data en ese tiempo basicamente lanza error timeout
      .timeout(Duration(seconds: 3))
      .listen(
        (data) {
          print(data);
        },
        // Aca capturamos el error del timeout
        onError: (error) {
          print("[Error] has error $error");
          // Para identificar que es error por timeout
          if (error is TimeoutException) {
            print("Timeout error");
          }
        },
        // Si esto esta activo deja de ejecutar y si no esta esta propiedad seguiria esperando a que el stream responda
        cancelOnError: true,
      );

  getInfoApi()
      // Si el stream no responde data en ese tiempo basicamente lanza error timeout
      .timeout(Duration(seconds: 3))
      // Unicamente controlariamos el error pero el stream se seguiria ejecutando
      .handleError((error) {
        if (error is TimeoutException) {
          print("It has error");
        }
      })
      .listen((data) {
        print(data);
      });
}

Stream<Map<String, dynamic>> getInfoApi() async* {
  await Future.delayed(Duration(seconds: 5));
  yield {"data": "After timeout return this"};
}
