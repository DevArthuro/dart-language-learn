class Personas {
  late String name;
  late String lastname;
  late int age;
  bool userActive = false;

  Personas({
    required String name,
    required String lastname,
    required int age,
    bool? isActive,
  }) {
    if (isActive != null && isActive) {
      this.userActive = isActive;
    }
    this.name = name;
    this.lastname = lastname;
    this.age = age;
  }

  get isUserActive {
    return this.userActive;
  }

  set setName(String name) {
    this.name = name;
  }

  void setAttribute({String? name, String? lastname, int? age}) {
    if (name != null) this.name = name;
    if (lastname != null) this.lastname = lastname;
    if (age != null) this.age = age;
  }

  // Si imprimos esta clase en crudo despues de ser inicializada muestra el nombre
  // de la persona
  @override
  String toString() {
    return "${this.name} ${this.lastname} tiene ${this.age}";
  }
}
