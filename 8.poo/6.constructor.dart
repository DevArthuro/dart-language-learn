void main() {
  final classExample = new ClassExample("Carlos");
  print(classExample);
}

class ClassExample {
  late String name;
  int? edad;

  // Constructor simple
  // Asignacion manual
  // ClassExample(String name, int edad) {
  //   print("Desde el constructor");

  //   // Asignar el valor a late para que no nos lance error
  //   this.name = name;
  //   this.edad = edad;
  // }

  // Se asignan los valores
  // Podemos colocar que algunos de ellos sean obligatorios y otros opcionales
  ClassExample(this.name, [this.edad]);

  @override
  String toString() {
    return "Hola soy $name y tengo $edad";
  }
}
