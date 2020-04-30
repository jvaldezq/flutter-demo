import 'dart:convert';

import 'package:demo/models/post_model.dart';
import 'package:http/http.dart';

class HttpsService {
  final String postsUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    Response res = await get(postsUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}
