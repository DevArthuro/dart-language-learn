import 'class-collections/singletonClass.dart';

main() {
  final MiSingletonClass1 = MiClassSingleton();
  final MiSingletonClass2 = MiClassSingleton();

  // Para la clase 2 también se le modifica la url
  MiSingletonClass1.urlPrefix = "${MiSingletonClass1.urlPrefix}/v2";

  print(
    MiSingletonClass1 == MiSingletonClass2,
  ); // True porque son la misma instancia en memoria

  print(MiSingletonClass1.urlPrefix);
  print(MiSingletonClass2.urlPrefix);
}
