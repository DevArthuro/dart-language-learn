enum TypeAccount { AHORROS, CREDITO, AFC }

abstract class Cuenta {
  String get nombre;
}

class CuentaAhorros extends Cuenta {
  CuentaAhorros() {
    print("Cuenta de ahorros iniciada");
  }
  @override
  String get nombre => "Ahorros";

  // Método específico solo para ahorros
  void calcularInteres(double monto, double tasa) {
    final interes = monto * tasa;
    print("Interés calculado: $interes");
  }
}

class CuentaCredito extends Cuenta {
  int? _cuotas;

  CuentaCredito() {
    print("Cuenta de crédito iniciada");
  }
  @override
  String get nombre => "Crédito";

  void set cuotas(int cuotas) {
    _cuotas = cuotas;
  }

  int? get cuotas {
    return _cuotas;
  }
}

class CuentaAFC extends Cuenta {
  CuentaAFC() {
    print("Cuenta AFC iniciada");
  }
  @override
  String get nombre => "AFC";
}

class BankApp {
  late Cuenta instance;

  factory BankApp(TypeAccount type) {
    switch (type) {
      case TypeAccount.AHORROS:
        return BankApp._ahorros();
      case TypeAccount.CREDITO:
        return BankApp._credito();
      case TypeAccount.AFC:
        return BankApp._afc();
    }
  }

  BankApp._ahorros() {
    instance = CuentaAhorros();
  }

  BankApp._credito() {
    instance = CuentaCredito();
  }

  BankApp._afc() {
    instance = CuentaAFC();
  }
}

void main() {
  // Podemos
  final cuentaDeAhorros =
      BankApp(TypeAccount.AHORROS).instance as CuentaAhorros;
  print(cuentaDeAhorros.nombre);

  cuentaDeAhorros.calcularInteres(1000, 0.2);

  final cuentaDeCredito = BankApp(TypeAccount.CREDITO).instance;
  print(cuentaDeCredito.nombre);

  if (cuentaDeCredito is CuentaCredito) {
    // Segunda forma para relacionar los metodos internos de una clase
    cuentaDeCredito._cuotas = 4;
    print("Las compras de su cuentas las hizo a ${cuentaDeCredito.cuotas}");
  }

  final cuentaDeAFC = BankApp(TypeAccount.AFC).instance;
  print(cuentaDeAFC.nombre);
}
