void main() {
  sleepProgram().then(print).catchError((error) {
    print("Error catch $error");
  });
}

Future<String> sleepProgram() async {
  if (1 == 1) {
    throw 'Error que lanzamos con throw';
  }

  Future<String> duration = Future.delayed(
    Duration(seconds: 3),
    () => "Hola mundo",
  );

  return duration;
}
