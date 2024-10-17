import 'package:flutter/material.dart';
import 'package:news_radar_app/widgets/trending_news_view_body.dart';

class TrendingNewsView extends StatelessWidget {
  const TrendingNewsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TrendingNewsViewBody(),
      ),
    );
  }
}
