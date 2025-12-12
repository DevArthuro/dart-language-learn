import 'dart:io';

List<String> clientes = [];

void main() {
  clientes.addAll(['Pedro', 'Pablo', 'Diaz', 'Carlos', 'Juan']);

  stdout.writeln('Escribe la inicial que quieres buscar');
  String letter = stdin.readLineSync() ?? '';

  print(findClient(letter));

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 4, 3, 3, 2];

  print(shortAddition(numbers));
}

List<String> findClient(String initial) => clientes
    .where((client) => client.toLowerCase().startsWith(initial.toLowerCase()))
    .toList();

int shortAddition(List<int> numbers) =>
    numbers.reduce((prev, current) => prev + current);
