import 'dart:math';

class Account {
  // Estas propiedades al ser privadas no pueden ser facilmente accedidas
  late TypeAccount _typeAccount;
  late String _numberAccount;
  late String _name;
  bool _active = true;

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

  get name => _name;

  get active => _active;

  set name(String name) {
    _name = name;
  }

  set active(bool active) {
    _active = active;
  }

  @override
  String toString() {
    return "Hola soy $_name y mi cuenta tiene $numberAccount";
  }
}

enum TypeAccount { AHORROS, CORRIENTE }
