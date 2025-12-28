class Vehiculo {
  bool _encendido = false;

  void encender() {
    _encendido = true;
  }

  void apagar() {
    _encendido = false;
  }

  bool get state {
    return _encendido;
  }
}
