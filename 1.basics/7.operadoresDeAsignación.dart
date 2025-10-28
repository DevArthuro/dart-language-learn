main() {
  int? numero;

  numero ??= 30;

  print(numero); // 30

  numero = null;

  int? a = 2;
  int b = 5;

  numero = a ?? b;
  print(numero);

  a = null;
  numero = a ?? b;

  print(numero);
}