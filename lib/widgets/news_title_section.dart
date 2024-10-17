import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';

class NewsTitleSection extends StatelessWidget {
  const NewsTitleSection({
    super.key,
    required this.title,
    this.onTap,
    this.middleWidget,
  });

  final VoidCallback? onTap;
  final Widget? middleWidget;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kGreenColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.7,
            ),
          ),
          if (middleWidget != null) middleWidget!,
          GestureDetector(
            onTap: onTap,
            child: const Text(
              "View All",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: kSecondaryOrangeColor,
                color: kSecondaryOrangeColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
