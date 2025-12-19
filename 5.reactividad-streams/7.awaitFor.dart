void main() async {
  // Vamos recorriendo cada yield por yield
  await for (int i in getNumbers(5)) {
    print(i);
  }

  print("Finish");
}

// Genera como una matriz asyncronica
/**
 * Solo se puede recorrer de dos maneras:
 * - haciendo un listener
 * - haciendo un for con await
 */
Stream<int> getNumbers(length) async* {
  for (int i = 0; i < length; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}
