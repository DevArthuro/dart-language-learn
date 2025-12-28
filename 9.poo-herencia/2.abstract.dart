import 'classes/vehiculo.dart';
import 'classes/abstact/vehiculo.dart';

/**
 * Las clases abstract son como clases que funcionan de interfaz para otras clases
 * - una guia de implementacion 
 * - Sobre escritura de la logica 
 * - logica encapsulada en las clases abstractas 
 * - No pueden ser instanciadas sino fueron extendidas antes 
 */

class CarImpl extends VehiculoAbstract {
  late String _variable;

  CarImpl() {
    _variable = '';
  }

  @override
  set variable(String value) {
    _variable = value;
  }

  @override
  Map<String, String> acelerar() {
    throw UnimplementedError();
  }

  @override
  String get variable => _variable;
}

void main() {
  // Esto no podriamos hacerlo con una clase abstracta instanciar una clase base
  final vehiculo = new Vehiculo();

  // Esto da un error porque no puedo inicializar clases abstractas
  // final abstractClass = new VehiculoAbstract();

  final carImpl = new CarImpl();
  carImpl.variable = "Carlos";
  print(carImpl.variable);

  carImpl.encender();
}
