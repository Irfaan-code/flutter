class Article {
  final String id;
  final String title;
  final String content;
  final String author;
  final DateTime publishedDate;
  final String? imageUrl;
  final List<String> tags;

  const Article({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.publishedDate,
    this.imageUrl,
    this.tags = const [],
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      publishedDate: DateTime.parse(json['publishedDate'] as String),
      imageUrl: json['imageUrl'] as String?,
      tags: List<String>.from(json['tags'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'author': author,
      'publishedDate': publishedDate.toIso8601String(),
      'imageUrl': imageUrl,
      'tags': tags,
    };
  }
}
