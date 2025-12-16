/**
 * Los Future son tareas asincronas que se asemejan a las promesas de javascript
 * y estas pueden tanto resolver la promesa o rechazarla
 */

void main() {
  timerFuture().then((value) {
    // El then solo se ejecuta cuando se resuelvan los 3 segundos
    print(value);
  });

  timerFuture().then(print); // El argumento que retorna el future lo imprime

  print("Esto se imprime primero");
}

Future<String> timerFuture() {
  Future<String> timeout = Future.delayed(
    Duration(seconds: 3),
    () => "Hola mundo",
  );

  return timeout;
}
