void main() {
  // first();
  // last();
  // length();
  // empty();
  // single();
  // any();
  // contains();
  // elementAt(5);
  // firstWhere();
  // lastWhere();
  // join();
  singleWhere();

  print("Se ejecuto todo asincronicamente");
}

Stream<int> getNumbers(int numbers) async* {
  for (int i = 1; i <= numbers; i++) {
    yield i;
    await Future.delayed(Duration(milliseconds: 500));
  }
}

// Nos trae el primer elemento del stream de datos
void first() async {
  print("Primero ${await getNumbers(10).first}");
}

// Nos trae el ultimo elemento del stream de datos
void last() async {
  print("Último ${await getNumbers(10).last}");
}

// Evalua cuando stream de datos y nos dice el numero exacto de la cantidad
void length() async {
  print("Longitud ${await getNumbers(5).length}");
}

// Evalua si esta vacio el stream de datos
void empty() async {
  print("Está vacio? ${await getNumbers(0).isEmpty}");
}

// Solo permite que haya un elemento y nos imprime ese elemento
void single() async {
  print("Es Singular ${await getNumbers(1).single}");
}

/**
 * Any y contains son muy iguales pero aqui sus difernecias
 * 
 * Any recibe como argumento una función y dicha función debe retornar un
 * booleano si este booleano retorna al menos un true el any responde true,
 * la ventaja es que el callback recibe como parametro el valor que esta
 * iterando lo que nos da mucha mas flexibilidad
 * 
 * Contains por el contrario recibe como argumento el valor exacto a buscar y
 * busca una coinsidencia con == si al menos uno cumple retorna true
 */

void any() async {
  print(
    "Tiene el (9) con any ${await getNumbers(10).any((number) => number == 9)}",
  );
}

void contains() async {
  print(
    "Tiene el (9) con contains ${await getNumbers(10).contains(9) ? "Si" : "No"}",
  );
}

// Esto lo que hace es que permite entrar directamente en los indices del 0
// hasta el maximo, de lo contrario lanza error
void elementAt(int index) async {
  print(
    "La pocisión a buscar es $index = ${await getNumbers(10).elementAt(index)}",
  );
}

// Buscar el primer elemento que cumpla con la condición
void firstWhere() async {
  print(
    "First Where ${await getNumbers(10).firstWhere((number) => number % 2 == 0)}",
  );
}

// Buscar de atras hacia adelante cual es el numero que cumple con la condición
void lastWhere() async {
  print(
    "Last Where ${await getNumbers(10).lastWhere((number) => number % 2 == 0)}",
  );
}

// Itera los elementos y se unen segun lo que le indiquemos
void join() async {
  print("Join the numbers ${await getNumbers(10).join(',')}");
}

// Deja un unico elemento y lo evalua solo funciona si queda un unico elemento basada
// en una condicion y adicional tiene mas condiciones
// 1. que no hayan mas de un elemento
// 2. que haya hasta un maximo de un elemento, si no hay ni uno tira error
void singleWhere() async {
  print(
    "Single where ${await getNumbers(3).singleWhere((number) => number % 2 == 0)}",
  );
}
