import 'abstact/animal.dart';

class Felines extends Animal {
  late bool isDangerous;

  Felines(super.name, super.isSpeed, {required bool isDanger}) {
    // Para poder inicializar de las propiedades que heredamos invocamos con super
    this.isDangerous = isDanger;
  }

  String isDangerousAnimal() {
    return "El animal ${name} ${isDangerous ? 'es' : 'no es'} peligroso";
  }
}
