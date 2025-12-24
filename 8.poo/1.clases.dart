void main() {
  Persona persona = new Persona("Carlos", "Orrego", 21);

  print(persona.name);
}

class Persona {
  // Campos o propiedades
  /**
   * Como no podemos poner el tipo y la variable en vez de usar 'String? name'
   * simplemente decimos late String name para que apunte a nuestro tipo y no sea String y null
   * siempre debemos definir automaticamente en el contructor estas propiedades
   * Ya que esto puede lanzar error si no se definen
   */
  late String name;
  late String apellido;
  late int edad;

  // Get y Set

  // Constructores
  Persona(String name, String apellido, int edad) {
    this.name = name;
    this.apellido = apellido;
    this.edad = edad;
  }

  // Métodos
}
