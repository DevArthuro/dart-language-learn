import 'assets/posts-v2.dart' as posts;

void main() {
  getPostsHandlerErrors().listen(
    (data) {},
    onError: (error) {
      print("[Error] $error");
    },
    cancelOnError: false,
  );
}

Stream<Map<String, dynamic>> getPostsHandlerErrors() async* {
  List<Map<String, dynamic>> postsWithErrors = posts.mapPost;

  for (Map<String, dynamic> mapPosts in postsWithErrors) {
    print(
      "[ID]: ${mapPosts['id'] ?? 'any'}, [NAME]: ${mapPosts['title'] ?? 'any'}",
    );
    if (mapPosts['error'] ?? false) {
      yield* Stream.error('Has error with post');
    }
    yield mapPosts;
    Future.delayed(Duration(microseconds: 500));
  }
}
