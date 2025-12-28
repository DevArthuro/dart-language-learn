import 'classes/felines.dart';

class Leon extends Felines {
  Leon(super.name, super.isSpeed, {required super.isDanger}) {}

  @override
  String isDangerousAnimal() {
    return "El leon con nombre ${super.name} ${super.isDangerous ? 'se lo puede comer' : 'es tranquilo'} jeje";
  }
}

void main() {
  final leon = new Leon('Dientes', true, isDanger: true);
  print(leon.isDangerousAnimal());

  final leon2 = new Leon('Melena', true, isDanger: false);
  print(leon2.isDangerousAnimal());
}
