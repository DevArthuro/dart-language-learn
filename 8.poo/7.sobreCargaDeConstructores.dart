void main() {
  final classExample = new ClassExample("Carlos", 21);
  print(classExample);

  // Invocar constructores alternos
  final classExample2 = new ClassExample.constructor2("Juan", 33);
  print(classExample2);

  // Solo se puede invocar 1 / 3 constructores que tiene esta clase, mas no todos al tiempo
  final ClassExample3 = new ClassExample.constructor3();
  print(ClassExample3);
}

class ClassExample {
  String? name;
  int? edad;

  // Constructor simple
  ClassExample(String name, int edad) {
    print("Desde el constructor");

    // Asignar el valor a late para que no nos lance error
    this.name = name;
    this.edad = edad;
  }

  ClassExample.constructor2(this.name, this.edad) {
    print("Constructor 2");
  }

  ClassExample.constructor3() {
    print("Constructor 3");
  }

  @override
  String toString() {
    return "Hola soy $name y tengo $edad";
  }
}
