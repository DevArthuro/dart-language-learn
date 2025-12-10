main() {
  List<String> superHeroes = ["batman", "superman", "linterna verde"];

  /**
   * tradicional y manejo de indices
   */
  for (int i = 0; i < superHeroes.length; i++) {
    print("El super heroe es ${superHeroes[i]}");
  }

  /**
   * Usando for in un hermano de for normal
   */
  for (String heroe in superHeroes) {
    print("El super heroe es $heroe");
  }


  Map<String, dynamic> superHeroesCaracteristicas = {
    "nombre": "superman",
    "debilidad": "una piedra"
  };

  superHeroesCaracteristicas.addAll({
    "edad": 18,
    "parentesco": "N/A"
  });

  for (MapEntry<String, dynamic> entry in superHeroesCaracteristicas.entries) {
    print("caracteristica ${entry.key} y el valor es ${entry.value}");
  }
}