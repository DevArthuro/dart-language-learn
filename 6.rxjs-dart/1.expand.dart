/**
 * La propiedad de expand de los stream basicamente lo que realiza es expandir 
 * los eventos que retorna el stream si por cada elemento retorna un dato y le 
 * agregamos variaciones en el array de expand nos genera nuevos retornos del stream
 */

List<String> names = ["Carlos", "Juan", "Pedro", "Pablo", "Dora"];

void main() {
  getNumbers()
      .expand(
        (data) => [
          {TypesOfName.NORMAL: data},
          {TypesOfName.UPPER: data.toUpperCase()},
          {TypesOfName.LOWER: data.toLowerCase()},
          {TypesOfName.INITIALS: data.substring(0, 1)},
        ],
      )
      .listen((data) {
        print(data);
        print("\nANOTHER\n");
      });
}

Stream<String> getNumbers() async* {
  for (String name in names) {
    yield name;
  }
}

enum TypesOfName { NORMAL, UPPER, LOWER, INITIALS }
