void main() {
  print(Saludar2());
  print(Saludar2(name: "Carlos", saludo: "Hola mundo"));
  print(Saludar2(edad: 21));

  print(Saludar3(name: "Otro mas", edad: 21));

  print(Saludo4("esto es un argumento posicional", name: "Carlos"));
  print(
    Saludo4(
      "esto es un argumento posicional",
      name: "Carlos",
      edad: 21,
      character: "Estudiante",
    ),
  );
}

String Saludar2({String? saludo, String? name, int? edad}) {
  return "Saludo 2: $saludo - $name - $edad";
}

String Saludar3({String saludo = "Hola buenas", String? name, int? edad}) {
  return "Saludo 2: $saludo - $name - $edad";
}

String Saludo4(String? optional, {String? name, int? edad, String? character}) {
  return "$name -  $edad - $character - $optional";
}
