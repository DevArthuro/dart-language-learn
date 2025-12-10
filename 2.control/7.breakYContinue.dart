void main() {
  List<Map<String, dynamic>> superHeroes = [];
  superHeroes.add({
    "name": "Batman",
    "lastname": "de la noche",
    "phone": 3042240910,
    "isDead": false,
  });

  superHeroes.add({
    "name": "guason",
    "lastname": "cuchillo",
    "phone": 333,
    "isDead": false,
  });

  superHeroes.add({
    "name": "superman",
    "lastname": "debilidad",
    "phone": 3200000,
    "isDead": false,
  });

  print(superHeroes);

  for (Map<String, dynamic> superHero in superHeroes) {
    // Si alguno esta muerto termina el blucle
    if (superHero["isDead"]) {
      break;
    }

    for (MapEntry<String, dynamic> entry in superHero.entries) {
      // Guason lo omite
      if (entry.key == "name" && entry.value == "guason") {
        continue;
      }

      // Si tiene el numero diablolico finalizaß
      if (entry.key == "phone" && entry.value == 333) break;

      dynamic value = entry.value;

      if (entry.key == "name") print("El super heroe poderoso es $value");
    }
  }
}
