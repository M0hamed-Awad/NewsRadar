import 'package:flutter/material.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/services/news_service.dart';
import 'package:news_radar_app/widgets/gaza_news_feed.dart';
import 'package:news_radar_app/widgets/custom_app_bar.dart';
import 'package:news_radar_app/widgets/news_builder.dart';

class GazaNewsViewBody extends StatelessWidget {
  const GazaNewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text(
            "Gaza News",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          sliver: NewsBuilder(
            dataRequest: NewsService().getGazaNews(),
            onSuccess: (List<ArticleModel> data) => GazaNewsFeed(
              articles: data,
              newsCount: data.length,
            ),
          ),
        ),
      ],
    );
  }
}
