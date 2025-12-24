import 'class-collections/personas.dart';

void main() {
  final persona = new Personas(name: "Carlos", lastname: "Orrego", age: 21);

  persona.name = "Juan";
  persona.lastname = "Gallego";
  persona.age = 22;

  print(persona);

  /**
   * Una mejor forma de hacer el paso anterior, ya que reutilizamos la misma instancia,
   * Consiste en usar una especie de spread de 2 puntos despues de la clase y ya podemos invocar otras propiedades
   */
  final persona2 = new Personas(name: "Pablo", lastname: "Arteaga", age: 18);

  // Aca se imprime el toString de Personas pero remplzamos la data en la impresion
  print(
    persona2
      ..name = "Juana"
      ..age = 45
      ..lastname = "Arco",
  );

  persona2.setAttribute(lastname: "Orrego");

  print(persona2);
}
