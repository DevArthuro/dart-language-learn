import 'classes/felines.dart';

class Gato extends Felines {
  late bool esEspongoso;

  Gato(
    super.name,
    super.isSpeed, {
    required super.isDanger,
    required bool smooth,
  }) {
    this.esEspongoso = smooth;
  }

  String get catEating {
    return super.eating ? "El gato esta comiento" : "El gato no esta comiendo";
  }
}

void main() {
  final siames = new Gato("Garras", false, isDanger: true, smooth: true);
  print(siames.catEating);
  siames.eating = true;
  print(siames.catEating);

  print(siames.isDangerousAnimal());
}
