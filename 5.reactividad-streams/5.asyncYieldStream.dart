import 'assets/posts.dart' as posts;

void main() {
  getApiPostLazy(5).listen((data) {
    print(data);
  });
}

Stream<List<Map<String, dynamic>>> getApiPostLazy(int page) async* {
  List<Map<String, dynamic>> postCopy = [...posts.mapPost];

  for (int i = 0; i < postCopy.length; i += page) {
    await Future.delayed(Duration(seconds: 2));
    yield postCopy.sublist(i, i + page);
  }
}
