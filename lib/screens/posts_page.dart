import 'dart:convert';

import 'package:di_json_app/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  // future qui retourne la liste des posts
  late Future<List<Post>> _postsFuture;

 

  @override
   void initState() {
    super.initState();
    // Initialiser la future pour charger les posts
    _postsFuture = _loadPosts();
  }
    // Méthode pour charger le JSON depuis les assets
  Future<List<Post>> _loadPosts() async {
    // On récupère le contenu brut du fichier JSON
    final String response =
        await rootBundle.loadString('assets/data/posts.json');
    // On décode le contenu en liste dynamique
    final List<dynamic> data = jsonDecode(response);
    // On convertit chaque élément en objet Post
    return data.map((json) => Post.fromJson(json)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
