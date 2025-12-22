void main() {
  // getNumbers(20)
  //     .handleError((error) {
  //       print("[error] $error");
  //     })
  //     .listen((data) {
  //       print(data);
  //     });

  getNumbers(20)
      // Unicamente usar si necesitamos captar un error pero perdemos los callbacks de error del listen
      .handleError((err) {
        print("[Error handler] $err");
      })
      .listen(
        (data) {
          print(data);
        },
        onError: (error) {
          // It no necesary: si usamos handler error ya que este no se ejecutara
          print("[Error] $error");
        },
        onDone: () {
          print("Completed");
        },
        // Esto no se ejecuta si usamos handler error
        cancelOnError: true,
      );
}

Stream<int> getNumbers(int limit) async* {
  for (int i = 1; i <= limit; i++) {
    if (i % 2 == 0) {
      yield* Stream.error("Handler error");
    } else {
      yield i;
    }
  }
}

Stream<int> getNumbersThrow(int limit) async* {
  for (int i = 1; i <= limit; i++) {
    if (i % 2 == 0) {
      throw "Handler error";
    } else {
      yield i;
    }
  }
}
