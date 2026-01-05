void main() {
  final person1 = new Person(0.0);
  person1.jump(speed: 5.0);
  person1.walk(speed: 8.0);
  person1.eating(smell: "Brocoli");
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print("$runtimeType is jumping at the speed of $speed");
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print("$runtimeType is walking at the speed of $speed");
    this.speed = speed;
  }
}

mixin CanEat {
  void eating({required String smell}) {
    print("$runtimeType is eating the smell $smell");
  }
}

/**
 * Para poder usar CanJump y CanWalk necesitamos pasarle antes HasSpeed ya que estos dependen de este
 * El HasSpeed debe ser pasado antes para poder hacer la dependencia
 */
class Person with CanEat, HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person(this.speed);
}
