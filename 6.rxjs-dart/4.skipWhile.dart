/**
 * Skipea los valores o no los pasa al listener, solo si se cumple la condicion que le demos
 * Y despues de que se deje de cumplir sigue imprimiendo normal sin volver a evaluar, por ende
 * es unicamente para los primeros valores
 */

void main() {
  getNumbers(20)
      .skipWhile((number) {
        return number % 2 == 0;
      })
      .listen((data) {
        print(data);
      });
}

Stream<int> getNumbers(int limit) async* {
  for (int i = 2; i <= limit; i++) {
    yield i;
    Future.delayed(Duration(seconds: 1));
  }
}
