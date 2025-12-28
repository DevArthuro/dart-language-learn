abstract class Animal {
  late String name;
  late bool isSpeed;
  bool _isEating = false;

  Animal(this.name, this.isSpeed);

  void set eating(bool state) {
    _isEating = state;
  }

  bool get eating {
    return _isEating;
  }
}
