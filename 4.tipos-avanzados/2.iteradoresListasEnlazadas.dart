import 'dart:collection';

void main() {
  Queue<int> cola = new Queue();

  cola.addAll([1, 2, 3, 4, 5]);

  cola.addFirst(6);
  cola.addLast(7);

  Iterator iteratorCola = cola.iterator;

  while (iteratorCola.moveNext()) {
    print(iteratorCola.current);
  }

  List<String> lista = ['Carlos', 'Daniel', 'Pablo', 'Pedro', 'Hector'];

  Iterator iteratorLista = lista.iterator;

  while (iteratorLista.moveNext()) {
    print(iteratorLista.current);
  }
}
