import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';
import 'package:news_radar_app/widgets/category_card.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 24,
        left: 12,
        right: 12,
      ),
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: kCategories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: kCategories[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
      ),
    );
  }
}
