main() {
    int edad = 21;
    String name = "Carlos";

    if (edad >= 21) {
        print("Tu $name eres ciudadano");
    } else if (edad >= 18 && edad <= 20) {
        print("Tu $name eres mayor de edad");
    } else {
        print("Tu $name eres menor de edad");
    }
}
