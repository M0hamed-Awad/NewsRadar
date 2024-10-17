import 'package:flutter/material.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/widgets/news_card.dart';

class GazaNewsFeed extends StatelessWidget {
  const GazaNewsFeed({
    super.key,
    required this.articles,
    required this.newsCount,
  });

  final List<ArticleModel> articles;
  final int newsCount;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              children: [
                NewsCard(newsArticle: articles[index]),
                const Divider(
                  thickness: 1,
                  height: 40,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black,
                )
              ],
            );
          },
          childCount: newsCount,
        ),
      ),
    );
  }
}
