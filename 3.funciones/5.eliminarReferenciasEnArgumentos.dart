/**
 * A veces cuando requerimos generar copias de diccionarios y listas sin impactar el original 
 * Debemos directamente hacer un spreed operation o generar una copia
 */

void main() {
  Map<String, String> mapa = {"name": "Carlos arturo", "phone": "3042240910"};
  List<String> listaNombres = ["Carlos", "Steven", "Lu", "Melon"];

  var mapa2 = funcionPruebaDeNoCopia(mapa);
  var listaNombres2 = funcionPruebaDeNoCopiaLista(listaNombres);

  // Mapas
  print(mapa);
  print(mapa2);

  // Lista
  print(listaNombres);
  print(listaNombres2);

  /**
   *  Modifica la referencia en memoria mas no hace una copia
   * 
    {name: CARLOS ARTURO, phone: 3042240910}
    {name: CARLOS ARTURO, phone: 3042240910}
    [Carlos, STEVEN, Guadalupe, Melon]
    [Carlos, STEVEN, Guadalupe, Melon]
   */

  mapa = {"name": "Carlos arturo", "phone": "3042240910"};
  listaNombres = ["Carlos", "Steven", "Lu", "Melon"];

  mapa2 = copiaMapaCapitalizeName(mapa);
  listaNombres2 = copiaListaCapitalizeAndChangeName(listaNombres);

  // Mapas
  print(mapa);
  print(mapa2);

  // Lista
  print(listaNombres);
  print(listaNombres2);

  /**
   *  No modifica la referencia en memoria sino que hace una copia
   * 
    {name: Carlos arturo, phone: 3042240910}
    {name: CARLOS ARTURO, phone: 3042240910}
    [Carlos, Steven, Lu, Melon]
    [Carlos, STEVEN, Guadalupe, Melon]
   */
}

// Mala practica

Map<String, String> funcionPruebaDeNoCopia(Map<String, String> mapa) {
  mapa["name"] = mapa["name"]?.toUpperCase() ?? 'No existe nombre';

  return mapa;
}

List<String> funcionPruebaDeNoCopiaLista(List<String> lista) {
  lista[1] = lista[1].toUpperCase();
  lista[2] = "Guadalupe";
  return lista;
}

// Buena practica

Map<String, String> copiaMapaCapitalizeName(Map<String, String> mapa) {
  Map<String, String> mapaCopia = {...mapa};
  mapaCopia["name"] = mapaCopia["name"]?.toUpperCase() ?? 'No existe nombre';

  return mapaCopia;
}

List<String> copiaListaCapitalizeAndChangeName(List<String> lista) {
  List<String> listaCopia = [...lista];

  listaCopia[1] = listaCopia[1].toUpperCase();
  listaCopia[2] = "Guadalupe";
  return listaCopia;
}
