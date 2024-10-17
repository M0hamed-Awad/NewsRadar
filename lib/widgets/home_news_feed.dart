import 'package:flutter/material.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/views/trending_news_view.dart';
import 'package:news_radar_app/widgets/news_card.dart';
import 'package:news_radar_app/widgets/news_title_section.dart';

class HomeNewsFeed extends StatelessWidget {
  const HomeNewsFeed({
    super.key,
    required this.articles,
    required this.newsCount,
    required this.isHomePage,
  });

  final List<ArticleModel> articles;
  final int newsCount;
  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // if we are in home page show the trending news section with link to the trending news page as the first element in the list
          if (index == 0 && isHomePage) {
            return NewsTitleSection(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrendingNewsView(),
                  ),
                );
              },
              title: "Trending",
            );
          }

          // if we are in home page then reset the index
          final newIndex = isHomePage ? index - 1 : index;

          return Column(
            children: [
              NewsCard(newsArticle: articles[newIndex]),
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
        childCount: isHomePage ? newsCount + 1 : newsCount,
      ),
    );
  }
}
