abstract class User {
  late String name;
  late int edad;
  User(this.name, this.edad);
}

mixin School {
  double? _notas;
  void set notas(double nota) {
    _notas = nota;
  }

  double get notas {
    return _notas ?? 0.0;
  }
}

class Estudiante extends User with School {
  late String address;
  Estudiante(super.name, super.edad, this.address);
}

void main() {
  var estudiante = Estudiante("Juan", 20, "Calle 123");
  estudiante.notas = 4.5;
  print(
    "Nombre: ${estudiante.name}, Edad: ${estudiante.edad}, Dirección: ${estudiante.address}, Nota: ${estudiante.notas}",
  );
}
