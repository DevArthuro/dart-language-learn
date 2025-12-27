/**
 * Reutilizamos el espacio en memoria lo que hace que sea mas optimo gestionar esto 
 * - El static ya guarda la instancia
 * - Si cambiamos las propiedades internas se cambian para todas las instancias 
 */
class MiClassSingleton {
  String urlPrefix = "https://api.mock.com";
  String ApiKey = "eyjfkdjflkjdlas";

  static final MiClassSingleton singletonMemory =
      new MiClassSingleton._singleton();

  factory MiClassSingleton() {
    return singletonMemory;
  }

  MiClassSingleton._singleton() {
    print("Clase singleton");
  }
}
