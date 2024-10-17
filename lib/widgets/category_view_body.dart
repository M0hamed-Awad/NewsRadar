import 'package:flutter/material.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/services/news_service.dart';
import 'package:news_radar_app/widgets/category_news_feed.dart';
import 'package:news_radar_app/widgets/custom_app_bar.dart';
import 'package:news_radar_app/widgets/news_builder.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: Text(
            category.replaceFirst(
              category[0],
              category[0].toUpperCase(),
            ),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        NewsBuilder(
          dataRequest: NewsService().getNewsByCategory(
            newsCategory: category,
          ),
          onSuccess: (List<ArticleModel> data) => CategoryNewsFeed(
            articles: data,
          ),
        ),
      ],
    );
  }
}
