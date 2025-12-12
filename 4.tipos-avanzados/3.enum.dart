import 'dart:io';

void main() {
  stdout.writeln(
    "Desea abrir una ccuenta de que tipo\n(0).Debito\n(1).Corriente\n(2).Credito",
  );
  String typeAccountByUser = stdin.readLineSync() ?? '';

  TypeAccount? account;

  switch (typeAccountByUser) {
    case "0":
      account = TypeAccount.debito;
      break;
    case "1":
      account = TypeAccount.debito;
      break;
    case "2":
      account = TypeAccount.debito;
      break;
    default:
      break;
  }
  print(account);

  if (account == null) {
    print("No tienes ninguna cuenta");
  } else {
    print("Tu cuenta es $account");
  }
}

enum TypeAccount { debito, corriente, credito }
