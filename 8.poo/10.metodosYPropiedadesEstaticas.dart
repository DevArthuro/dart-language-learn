/**
 * Es importante aclarar que los metodos estaticos estan fuera del contexto de la lógica de la clase
 * Estos deben funcionar mas como utilitarios 
 */
class PropiedadesEstaticas {
  final List<String> listado = ["Martillo", "Llave Inglesa", "Desarmador"];

  static List<String> listadoEstatico = [
    "Martillo",
    "Llave Inglesa",
    "Desarmador",
  ];

  static final List<String> listadoConFinal = ["Valor 1", "Valor 2", "Valor 3"];

  static const String apiKeyConConst = "API KEY ABSTRACT";

  static const List<String> listadoConConst = [
    "valor const 1",
    "valor const 2",
    "valor const 3",
  ];

  static getListado() {
    return listadoEstatico;
  }
}

void main() {
  /**
     * Propiedades no estaticas
     */
  final propiedades = new PropiedadesEstaticas();

  print(
    propiedades.listado,
  ); // Está es la unica forma de acceder una propiedad creando una instancia

  /**
     * Propiedades estaticas 
     */
  print(
    PropiedadesEstaticas.listadoEstatico,
  ); // Podemos invocar el metodo sin crear una instancia

  /**
   * Modificar un valor estatico en memoria 
   */
  PropiedadesEstaticas.listadoEstatico = [
    "Otros valores",
    "Valor 1",
    "Valor 2",
  ];

  print(PropiedadesEstaticas.listadoEstatico); // Queda modificado el valor

  /**
   * Modificar objetos final como valores estaticos 
   * - Solo sirve para valores que sean objetos en memoria 
   */
  print(PropiedadesEstaticas.listadoConFinal);

  PropiedadesEstaticas.listadoConFinal.addAll(["Valor 4", "Valor 5"]);

  print(PropiedadesEstaticas.listadoConFinal);

  /**
   * Propiedades estaticas fijas con const (no pueden modificarse)
   * - No puedo re asignar la variable
   * - No puedo agregar valores a los objetos 
   */
  print(PropiedadesEstaticas.apiKeyConConst);
  print(PropiedadesEstaticas.listadoConConst);

  /**
   * Llamar métodos estaticos 
   * - Los métodos estaticos estaticos unicamente se pueden alimentar de propiedades estaticas
   */
  print(PropiedadesEstaticas.getListado());
}
