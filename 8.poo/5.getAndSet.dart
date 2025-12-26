import 'class-collections/accountSettersGetters.dart';

/**
 * Los get and set son usados para las propiedades privadas mayormente o para exponer una serie de datos
 * get - lo que hace es que nos trae unicamente como retorno lo que necesitamos se invoca como un metodo pero sin parentesis 
 * set - lo que hace este metodo es que nos recibe 1 parametro unicamente y no lo recibe como argumento sino por asignación
 */
void main() {
  final client1 = new Account(type: TypeAccount.AHORROS, name: "Daniel");
  // Call the get for _name
  print(client1.name);

  // Call the set for _name
  client1.name = "Carlos";
  print(client1.name);

  final cliente2 = new Account(type: TypeAccount.CORRIENTE, name: "Pablo");
  print(cliente2.active ? "Su cuenta está activa" : "Su cuenta está cerrada");

  cliente2.active = false;
  print("Para ${cliente2.name} su cuenta está ${verifyAccount(cliente2)}");
  print(
    "Para ${client1.name} su cuenta está ${client1.active = false} ${verifyAccount(client1)}",
  );

  // Podemos modificar varios getters al tiempo
  cliente2
    ..name = "Juan"
    ..active = true;

  print(cliente2);
  print(verifyAccount(cliente2));
}

String verifyAccount(Account instance) {
  return instance.active ? "Su cuenta está activa" : "Su cuenta está cerrada";
}
