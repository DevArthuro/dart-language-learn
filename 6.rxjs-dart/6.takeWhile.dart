/**
 * El la opsición al skipWhile, este lo que realiza es coger los valores iniciales y despues 
 * empieza a omitir los valores, el takeWhile funciona por mostrar valores que cumplen
 * con una condición y apartir de esto si la condicion deja de cumplirse no muestra mas valores
 */

void main() {
  getNumbers(10)
      .takeWhile((number) {
        return number < 10;
      })
      .listen((data) {
        print(data);
      });
}

Stream<int> getNumbers(int limit) async* {
  yield 1;
  yield 2;
  yield 8;
  yield 7;
  yield 11;
  yield 6;
  yield 7;
  yield 8;
}
