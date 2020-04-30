import 'package:demo/services/http_service.dart';
import 'package:demo/models/post_model.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  final HttpsService httpsService = HttpsService();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
      future: httpsService.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.hasData) {
          List<Post> posts = snapshot.data;

          return ListView(
              children: posts
                  .map((Post post) => ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.body),
                      ))
                  .toList());
        }
        return CircularProgressIndicator();
      },
    ));
  }
}
