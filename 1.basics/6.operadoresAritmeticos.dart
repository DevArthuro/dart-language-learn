main() {
  int b = -2;
  print(-(b));

  int multiplicacion = 2 * 2;
  print("Multiplicación $multiplicacion");

  double division = 5/2; // División decimal = 2.5
  double divisionDecimal = 40/5; // 8.0

  print("""
  Division 1: $division
  Division 2: $divisionDecimal
""");


  /**
   * Para sacar ek signo (~)
   * Se hace con teclado ingles  (altgr + 4)
   */
  int divisioNormal = 50~/5; // 10
  int divisionNomalDecimal = 347~/3; // 115

  print("""
  Division 1: $divisioNormal
  Division 2: $divisionNomalDecimal
""");

  int residuo = 5%2; // 1 Es un numero impar
  int divisionSintetica =  340%2; // 0 es unnumero par

  print("""
  Residuo 1 o division sintetica: $residuo
  Residuo 2 o division sintetica: $divisionSintetica
""");

  /**
   * Suma (+)
   * Resta (-)
   */


  int counter = 0;
  counter++; // + 1
  counter++; // + 1

  print("Counter aumentado $counter"); // 2

  counter--; // - 1
  counter--; // - 1 

  print("Counter decrementado $counter"); // 0

  /**
   * Abreviar operaciones 
   * signo + =
   * 
   * Suma - variable += 2;
   * Resta - variable -= 2;
   * Division - variable /= 2;
   * Multiplicacion - variable *= 4;
   * Division Entera - variable ~/= 3;
   * Residuo -  variable %= 3;
   */

  int variableTest = 543;

  int divisionEntera = variableTest ~/= 3;
  print("Resultado abreviación $divisionEntera");

}