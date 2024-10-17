import 'package:flutter/material.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/views/webview_news_page.dart';
import 'package:news_radar_app/widgets/news_card_content.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.newsArticle,
  });

  final ArticleModel newsArticle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebviewNewsPage(
              url: newsArticle.url,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: NewsCardContent(newsArticle: newsArticle),
      ),
    );
  }
}
