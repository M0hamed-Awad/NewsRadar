import 'package:flutter/material.dart';
import 'package:news_radar_app/widgets/category_view_body.dart';

class NewsCategoryView extends StatelessWidget {
  const NewsCategoryView({
    super.key,
    required this.category,
  });
  final String category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CategoryViewBody(
          category: category,
        ),
      ),
    );
  }
}
