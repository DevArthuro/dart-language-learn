/**
 * Basicamente lo que este metodo realiza es limpiar data duplicada
 * solamente se invoca y limpia de los datos repetidos, unicamente si el valor 
 * previo esta repetido al actual, no remueve repetidos
 * 
 * evita los eventos duplicados
 */

void main() {
  // Compara si el valor previo es igual al actual
  getNumbersDuplicate(20).expand((data) => [data, data]).distinct().listen((
    data,
  ) {
    print(data);
  });

  // Elimina los valores que son diferentes del anterior o sea solo imprime valores repetidos
  getNumbersDuplicate(20)
      .expand((data) => [data, data])
      .distinct((prev, curren) {
        return prev != curren;
      })
      .listen((data) {
        print(data);
      });
}

Stream<int> getNumbersDuplicate(int limit) async* {
  for (int i = 0; i <= limit; i++) {
    yield i;
    yield i;
    yield i;
    Future.delayed(Duration(milliseconds: 500));
  }
}
