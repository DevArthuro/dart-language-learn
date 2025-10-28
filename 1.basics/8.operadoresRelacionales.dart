/**
 * >
 * <
 * >=
 * <=
 * ==
 * !=
 * is
 * is!
 */

main() {
  int a = 30;
  int b = 20;

  print(a > b); // true
  print(a < b); // false
  print(a <= b); // false
  print(a >= b); // true
  
  String nombre = "Carlos";
  String nombre2 = "Juan";

  print(nombre == nombre2); // false 
  print(nombre != nombre2); // true

  // Evaluacion de tipos 

  int numero = 30;

  print(numero is double); // False
  print(numero is int); // True
  print(numero is! String); // True


}