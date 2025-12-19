void main() async {
  if (await getNumbers(10).isEmpty) {
    print("Valores Vacios");
  } else {
    print("Tenermos valores");
    print(await getNumbers(0).length);
  }
}

Stream<int> getNumbers(length) async* {
  for (int i = 0; i < length; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

Stream<int> getNumbersIsEmpty() async* {
  print("Is Empty");
}
