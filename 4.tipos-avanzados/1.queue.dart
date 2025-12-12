import 'dart:collection';

void main() {
  Queue<int> cola = new Queue();

  cola.addAll([1, 2, 3, 4, 5]);

  cola.addFirst(6);
  cola.addLast(7);

  print(cola);
}
