List<Map<String, dynamic>> clientes = [
  {"id": 1, "name": "Carlos"},
  {"id": 2, "name": "Ana"},
  {"id": 3, "name": "Pedro"},
];

void main() {
  findClient(3, (String name) => print("Hola parce $name"));
}

void findClient(int id, Function(String client) callback) {
  List<Map<String, dynamic>> client = clientes
      .where((client) => client['id'] == id)
      .toList();

  if (client.length > 0) {
    callback(client[0]['name']);
  } else {
    print("There isn't client");
  }
}
