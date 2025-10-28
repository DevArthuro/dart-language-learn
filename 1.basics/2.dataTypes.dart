main () {
  // === Nùmeros
  var a = 10; // Var va a inferir el tipo por nosotros
  int b = 12; // Definir un valor entero con no decimales 
  double c = 12.7; // Para definir numeros con decimales .flotante

  int d; // Tambien me permite inicializar variables nulas sin definir
  int? e; // Aqui le estoy diciendo que es un valor nulo 

  print(e);

  double _b = 65;
  double $c = 76;

  double resultado = $c + _b;

  print(resultado);


  // === String 

  String nombre = "Carlos";
  String apellido = "Orrego";

  String nombreCompleto = nombre + apellido;

  print(nombreCompleto);
  print(nombre != apellido);

  String nombreCompletoEstiloDart = "$nombre $apellido";
  print("Nombre completo estilo dart $nombreCompletoEstiloDart");


  String stringMultiLinea = """

  Esto es un string multinea còmo estàs?

  $nombre calmalo pablo
""";


  print(stringMultiLinea);


  // === Booleans
  bool estoEsUnValorBooleano = false;

  print(!estoEsUnValorBooleano);

  // === Lists 

  List<String> listaDeStrings = ["Carlos", "Arturo", "Garcia"];
  var listaDeObjectos = [1, 2, 3, "c", "d"];

  listaDeStrings[2] = "Orrego";

  print(listaDeStrings.join(" "));

  listaDeStrings.add("Diaz");

  print(listaDeStrings.join(" "));

  // === Sets 

  Set<String> villanos2 = { "lex", "doom", "guason" };
  print(villanos2);

  villanos2.add("guason");
  villanos2.add("tron");

  print(villanos2);

  // Ejercicio rapido eliminar duplicados 

  List<int> numeros = [1,2,3,4,5,6];
  numeros.add(2);
  numeros.add(2);
  numeros.add(2);
  numeros.add(2);
  print(numeros); // [1, 2, 3, 4, 5, 6, 2, 2, 2, 2]
  
  
  Set<int> numeroSet = numeros.toSet();
  print(numeroSet); // Elimina duplicados {1, 2, 3, 4, 5, 6}

  numeros = numeroSet.toList();
  print(numeros); // [1, 2, 3, 4, 5, 6]


  // === Maps   (Diccionarios, objetos literales)

  var ironMan = {
    "nombre": "Tony",
    "apellido": "stark",
    "edad": 30
  };

  print(ironMan["nombre"]);

  Map<String, dynamic> capitan = new Map();

  capitan.addAll({
    "nombre": "Roger",
    "poder": "force",
    "edad": 30,
  });


  capitan.addAll(ironMan);

  print(capitan);

}