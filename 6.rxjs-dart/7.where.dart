/**
 * Es como una especie de filtro unicamente muestra los valores que cumplan con la condición
 * es como una especie de filter como se realizaria en programación reactiva se aplica sobre los 
 * valores sin detener la ejecución
 */

import 'assets/posts-v2.dart' as posts;

void main() {
  getNumbers(20)
      .where((number) {
        return number % 2 == 0;
      })
      .listen((data) {
        print(data);
      });

  // Muestra los posts que no contengan errores
  getPosts()
      .where((data) {
        return data['error'] == null;
      })
      .listen((data) {
        print(data);
      });
}

Stream<int> getNumbers(int limit) async* {
  for (int i = 0; i <= limit; i++) {
    yield i;

    await Future.delayed(Duration(milliseconds: 500));
  }
}

Stream<Map<String, dynamic>> getPosts() async* {
  for (Map<String, dynamic> post in posts.mapPost) {
    yield post;
    await Future.delayed(Duration(milliseconds: 500));
  }
}
