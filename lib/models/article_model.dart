class ArticleModel {
  late final String author;
  late final String title;
  late final String url;
  late final String? description;
  late final String? urlToImage;

  ArticleModel({
    required this.author,
    required this.title,
    required this.url,
    this.description,
    this.urlToImage,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      author: json['source']['name'] ?? 'UNKNOWN',
      title: json['title'].split("-")[0] ?? 'UNKNOWN',
      url: json['url'] ?? 'UNKNOWN',
      description: json['description'],
      urlToImage: json['urlToImage'],
    );
  }
}
