import 'dart:math';

void main() {
  // Esto podria tener problemas porque la clase esta al mismo nivel
  final account1 = new Account(type: TypeAccount.AHORROS, name: "Carlos");
  print(account1.numberAccount);

  final account2 = new Account(type: TypeAccount.AHORROS, name: "Juan");
  print(account2.numberAccount);
  print(account2._name);

  account2._name = "Isabella";
  print(account2._name);
}

/**
 * Tener la clase en el mismo archivo es contraproducente 
 * Se produce una especie de bug, ya que puedo acceder a las propiedades como 
 * publicas aun cuando son privadas 
 */

class Account {
  // Estas propiedades al ser privadas no pueden ser facilmente accedidas
  late TypeAccount _typeAccount;
  late String _numberAccount;
  late String _name;

  Account({required TypeAccount type, required String name}) {
    this._numberAccount = this._generateNumberAccount();
    this._typeAccount = type;
    this._name = name;
  }

  String _generateNumberAccount() {
    final List<int> bread = [];
    for (int i = 0; i < 4; i++) {
      bread.add(1000 + Random().nextInt(8999));
    }

    return bread.join("-");
  }

  String get numberAccount {
    String bread = this._numberAccount;
    String prefix = bread.substring(0, 4);
    int restOfBread = bread.length - prefix.length;
    String hide = '';
    for (int i = 0; i < restOfBread; i++) {
      if (bread.substring(4)[i] == '-') {
        hide += '-';
        continue;
      }
      hide += '*';
    }
    return prefix + hide;
  }

  TypeAccount get typeAccount {
    return this._typeAccount;
  }
}

enum TypeAccount { AHORROS, CORRIENTE }
