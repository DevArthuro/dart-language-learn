void main() {
  print(saludar("Carlos", 21));
  print(llamadoAtencion("Otro llamado de atencion"));
  print(llamadoAtencion('Regaño a', 'Carlos'));
}

String saludar(String name, int edad, [String? additionalGettings]) {
  return "Te saluda $name con la edad de $edad ${additionalGettings != null ? additionalGettings : ''}";
}

String llamadoAtencion([String anotherMessage = "Lo haces mal", String? name]) {
  return "$anotherMessage ${name != null ? name : ''}";
}
