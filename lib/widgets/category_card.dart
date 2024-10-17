import 'package:flutter/material.dart';
import 'package:news_radar_app/models/category_model.dart';
import 'package:news_radar_app/views/news_category_view.dart';
import 'package:news_radar_app/widgets/rounded_image.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsCategoryView(
              category: category.categoryName.toLowerCase(),
            ),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          _buildCategoryImage(),
          Text(
            category.categoryName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildCategoryImage() {
    return Stack(
          children: [
            RoundedImage(
              width: 150,
              height: 70,
              borderRadius: 8,
              image: AssetImage(category.image),
            ),
            Container(
              width: 150,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        );
  }
}
