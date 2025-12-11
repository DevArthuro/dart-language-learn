void main() {
  print(
    Saludar1(
      "esto es un argumento posicional",
      // Incluye estos dos argumentos ya que son requeridos
      name: "Carlos",
      character: "Profesor",
    ),
  );
  print(
    Saludar1(
      "esto es un argumento posicional",
      name: "Carlos",
      edad: 21,
      character: "Estudiante",
    ),
  );
}

// Los argumentos de name y character siempre deberan ejecutarse
String Saludar1(
  String? optional, {
  required String name,
  int? edad,
  required String character,
}) {
  return "$name -  $edad - $character - $optional";
}
