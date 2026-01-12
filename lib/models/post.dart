class Post {
  // Model class representing a blog post
  final int id;
  final String title;
  final String content;
  // Constructor

  Post({required this.id, required this.title, required this.content});
// La fonction fromJson est une méthode de désérialisation qui permet de convertir 
//des données JSON brutes (reçues d'une API) en un objet Dart de type Post
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }
}
