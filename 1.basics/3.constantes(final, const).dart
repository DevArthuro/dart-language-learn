main() {

  // En este ejemplo podemos reasignar valores (esto cambia el espacio de una variable en memoria )
  String nombre = "Carlos";
  nombre = "Juan";

  print(nombre);

  // Uso de final y alcances 

  final nombre2 = "Carlos";
  // nombre2 = "Juan"; // Esto no es valido porque estamos cambiando su valor en memoria 
  final List<String> listaNombres = ["Juan", "Carlos", "Arturo"];
  // listaNombres = ["nuevo", "list", "nombres "] // esto no es valido porque estamos cambiando el valor 
  listaNombres[0] = "Pedro"; // Esto es valido porque estamos modificando el mismo espacio en memoria 
  final Map<String, int> listaNumeros = {
    "uno": 1,
    "dos": 2,
    "tres": 4
  };

  final objeto = new Map<String, int>();

  listaNumeros["tres"] = 3; // Esto es valido porque estmos modificando el mismo espacio en memoria 
  listaNumeros.addAll({
    "cuatro": 4,
    "cinco": 5,
  });

  print(listaNumeros);

  final Set<int> setDeNumeros = {
    1, 2, 3, 4
  };

  print(setDeNumeros.elementAt(0));

  // Uso de const y alcances 

  const String nombre3 = "Carlos";

  // nombre3 = "Juan" // Esto no es valido 

  const List<int> numerosEnteros = [1,2,3,4,5];
  numerosEnteros[0] = 8; // Esto no es valido const no permite modificar objetos 

  // En resumen const no permite modificar sus elementos internos 
  
}
