import 'package:news_radar_app/helper/api.dart';
import 'package:news_radar_app/models/article_model.dart';

class NewsService {
  final String baseURL = "https://newsapi.org/v2";
  final String apiKey = "7a6faf3317e4459f971b0ce5cb3e03a8";
  final List<String> requestFilters = [
    "popularity",
    "publishedAt",
  ];

  Future<List<ArticleModel>> getGazaNews() async {
    String q = "gaza";

    List<ArticleModel> articlesList = [];

    Map<String, dynamic> jsonData = await Api().get(
      url:
          '$baseURL/top-headlines?q=$q&sortBy=${requestFilters[1]}&apiKey=$apiKey',
    );

    List<dynamic> articles = jsonData['articles'];

    for (var article in articles) {
      if (article["urlToImage"] != null &&
          article["description"] != null &&
          (article["source"]["id"] != "the-washington-post" &&
              article["source"]["id"] != "al-jazeera-english")) {
        articlesList.add(
          ArticleModel.fromJson(article),
        );
      }
    }

    return articlesList;
  }

  Future<List<ArticleModel>> getTrendingNews() async {
    List<ArticleModel> articlesList = [];
    String sources = "abc-news,bbc-news,cnn,reuters,bloomberg";

    Map<String, dynamic> jsonData = await Api().get(
      url:
          '$baseURL/top-headlines?sources=$sources&sortBy=${requestFilters[1]}&apiKey=$apiKey',
    );

    List<dynamic> articles = jsonData['articles'];

    for (var article in articles) {
      if (article["urlToImage"] != null && article["description"] != null) {
        articlesList.add(
          ArticleModel.fromJson(article),
        );
      }
    }

    return articlesList;
  }

  Future<List<ArticleModel>> getNewsByCategory({
    String newsCategory = 'general',
  }) async {
    List<ArticleModel> articlesList = [];

    Map<String, dynamic> jsonData = await Api().get(
      url:
          '$baseURL/top-headlines?category=$newsCategory&sortBy=${requestFilters[0]}&apiKey=$apiKey',
    );

    List<dynamic> articles = jsonData['articles'];

    for (var article in articles) {
      if (article["urlToImage"] != null &&
          article["description"] != null &&
          article["source"]["id"] != "the-washington-post") {
        articlesList.add(
          ArticleModel.fromJson(article),
        );
      }
    }

    return articlesList;
  }
}
