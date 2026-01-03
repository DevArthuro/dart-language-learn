/**
     * Funciones constructoras
     * 
     * Son diferentes constructores para definir una lista, o sea solo se ejecutan
     * Cuando se crean
     */
void main() {
  // Lista estatica la cual si se modifica daria error
  List<String> list = List.unmodifiable(["Carlos", "Pablo", "Alberto"]);
  // Esto da error
  // list[1] = "Juan";

  // Esto da error
  // list.add("Hector");

  // Se le coloca growable para que se le puedan añadir objetos, pero se inicializa
  // En blanco
  // Si no se asigna el growable por defecto es falso osea de tamaño fijo
  List<String> listEmpty = List.empty(growable: true);
  print(listEmpty);

  listEmpty.add("Carlos");

  /**
     * Nos da una lista llena con una longitud fija y lo que colocamos en el segundo argumento
     * con eso se va a llenar por defecto
     * 
     * el growable basicamente nos dice si le podemos añadir objetos o no
     * adicional podemos modificar la lista en la pocisión que le digamos
     * 
     * Podemos generar matrices por ejemplo  
     */
  List<String> listFilled = List.filled(5, "", growable: false);

  listFilled[1] = "Luis";

  print(listFilled);

  /**
     * Generamos una lista apartir de los elementos que le asignemos, por defecto 
     * el growable es true pero podemos pasarlo a false y se convertiria en una lista que 
     * no podemos modificar 
     */
  List<int> listFrom = List.from([1, 2, 3, 4, 5], growable: true);
  listFrom.add(8);

  print(listFrom);

  /**
   * Generate basicamente me genera una lista con una longitud fija y le podemos pasar un callback para generar
   * datos por defecto, ese callback recibe como argumento el index donde va hasta que se cumpla la logitud
   * 
   * el growbable por defecto es true o sea que podemos poner objetos 
   */
  List<String> listGenerate = List.generate(7, (int index) {
    return "Carlos $index";
  }, growable: true);

  print(listGenerate);

  /**
   * of es bueno diferenciarlo con from y podemos ver esto con el uso de var 
   * 
   * from no infiere el tipo 
   * 
   * of si infiere el tipo ya que of se apoya sobre genericos
   */

  final listWithFrom = List.from([1, 2, 3, 4]);
  // List<dynamic>
  print(listWithFrom.runtimeType);
  // Esto esta bien ya que la inferencia es dynamic
  listWithFrom.add("Carlos");

  // List<int>
  final listWithOf = List.of([1, 2, 3, 4]);
  print(listWithOf.runtimeType);
  // Esto da error ya que la lista infiere que es string
  listWithOf.add("Carlos");
}
