void main() async {
  // Espera 3 segundos antes de ejecutar cualquier otra cosa
  await sleepProgram(seconds: 3, callback: () => {print("Hola mundo")});

  print("Primera impresion sino hay await");
}

sleepProgram({required int seconds, required Function() callback}) {
  return Future.delayed(Duration(seconds: seconds), callback);
}
