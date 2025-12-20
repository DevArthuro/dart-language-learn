/**
 * Lo que skip realiza es skipear los elementos que le digamos 10, 20, 30 elementos
 * Y no los imprimiria, pero lo que hace es un conteo
 */

void main() {
  getNumbers(20).skip(10).listen((data) {
    print(data);
  });
}

Stream<int> getNumbers(int limit) async* {
  for (int i = 1; i <= limit; i++) {
    yield i;
    Future.delayed(Duration(seconds: 1));
  }
}
