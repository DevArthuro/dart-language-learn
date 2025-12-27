void main() {
  const class1 = ClassExampleFinalAndConst(["Carlos"], 21);
  const class2 = ClassExampleFinalAndConst(["Carlos"], 21);

  // Esto nos daria true ya que los constructores se reutilizan en este caso
  print(class1 == class2);

  // Esto no seria valido ya que estamos modificando la clase
  class1.setName = "Juan";
  print(class1.names); // ["Carlos"]
}

class ClassExampleFinalAndConst {
  final List<String> names;
  final int edad;

  const ClassExampleFinalAndConst(this.names, this.edad);

  set setName(String name) {
    this.names.add(name);
  }
}
