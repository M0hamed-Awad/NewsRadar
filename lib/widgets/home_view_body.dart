import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/services/news_service.dart';
import 'package:news_radar_app/widgets/gaza_news_slider.dart';
import 'package:news_radar_app/widgets/category_row.dart';
import 'package:news_radar_app/widgets/custom_app_bar.dart';
import 'package:news_radar_app/widgets/home_news_feed.dart';
import 'package:news_radar_app/widgets/news_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: Image(
            image: AssetImage(kLogo),
            width: 200,
          ),
        ),
        const SliverToBoxAdapter(
          child: CategoriesRow(),
        ),
        NewsBuilder(
          dataRequest: NewsService().getGazaNews(),
          onSuccess: (List<ArticleModel> data) => GazaNewsSlider(
            articles: data,
          ),
        ),
        NewsBuilder(
          dataRequest: NewsService().getTrendingNews(),
          onSuccess: (data) => HomeNewsFeed(
            isHomePage: true,
            newsCount: data.length ~/ 2,
            articles: data,
          ),
        ),
      ],
    );
  }
}
