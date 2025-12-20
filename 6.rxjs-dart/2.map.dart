void main() {
  getNumbers(10).map((number) => number * 10).listen((data) {
    print(data);
  });
}

Stream<int> getNumbers(int limit) async* {
  for (int i = 1; i <= limit; i++) {
    yield i;
    Future.delayed(Duration(seconds: 1));
  }
}
