import 'package:flutter/material.dart';
import 'package:news_radar_app/widgets/gaza_news_view_body.dart';

class GazaNewsView extends StatelessWidget {
  const GazaNewsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: GazaNewsViewBody(),
      ),
    );
  }
}
