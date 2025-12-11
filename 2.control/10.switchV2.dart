void main() {
  Map<String, dynamic> evento = {"tipo": "feriado", "mes": 12, "dia": 11};

  switch (evento) {
    case {"tipo": "feriado"} && {"dia": 11, "mes": 12}:
      print("Es feriado");
      break;
    case {"tipo": "dia"} || {"dia": 10}:
      print("Dia normal");
      break;
    default:
      print("Caso defecto");
      break;
  }
}
