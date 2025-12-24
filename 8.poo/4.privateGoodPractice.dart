import '3.privateBadPractice.dart';

void main() {
  // Esto podria tener problemas porque la clase esta al mismo nivel
  final account1 = new Account(type: TypeAccount.AHORROS, name: "Carlos");
  print(account1.numberAccount);

  final account2 = new Account(type: TypeAccount.AHORROS, name: "Juan");
  print(account2.numberAccount);
}
