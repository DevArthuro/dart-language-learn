/**
 * Para declarar una clase abstacta debemos usar el prefijo de abstract
 * Podemos tener logica en nuestra clase abstracta 
 * Podemos tener cosas solo declaradas sin implementar 
 */

abstract class VehiculoAbstract {
  bool _encendido = false;

  // Esto no es una propiedad es un abstracto de un getter y un setter si lo vemos necesario
  // Podemos declarar variables abstractas sin implementación
  abstract String variable;

  void encender() {
    // Esto invoca el set que debimos implementar
    variable = "Juan";
    // Esto invoca la implementación que debimos hacer de ese get
    // Es como una forma de hacer inyeccion de logica dentro de nuestra clase abstracta
    print(variable);
    _encendido = true;
  }

  void apagar() {
    _encendido = false;
  }

  bool get state {
    return _encendido;
  }

  // Podemos declarar métodos sin implementación, netamente abstractos
  // Son obligatorio definirlo si se extienden
  Map<String, String> acelerar();
}
