/**
 * El la opsición al skip, este lo que realiza es coger los valores iniciales y despues 
 * empieza a omitir los valores, el take funciona por posiciones por ejemplo en 
 * este caso coge 5 posiciones
 */

void main() {
  getNumbers(10).take(5).listen((data) {
    print(data);
  });
}

Stream<int> getNumbers(int limit) async* {
  for (int i = 1; i <= limit; i++) {
    yield i;
    Future.delayed(Duration(milliseconds: 500));
  }
}
