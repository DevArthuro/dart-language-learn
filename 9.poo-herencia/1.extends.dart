import 'classes/car.dart';

/**
 * Es importante que si usamos encapsulamiento debemos crear diferentes archivos para cada clase 
 * Con el fin que. el encapsulamiento se pueda cumplir y las propiedades no sean accesibles 
 */
void main() {
  final car = new Car();
  print("El carro está ${humanizedStateEncender(car.state)}");

  car.encender();

  print("El carro está ${humanizedStateEncender(car.state)}");
}

String humanizedStateEncender(bool state) {
  return state ? "ENCENDIDO" : "APAGADO";
}
