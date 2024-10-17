import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      backgroundColor: Colors.transparent,
      color: kPrimaryPurpleColor,
      strokeWidth: 6,
    );
  }
}
