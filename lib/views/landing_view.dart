import 'package:flutter/material.dart';
import 'package:news_radar_app/widgets/landing_view_body.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: const LandingViewBody(),
      ),
    );
  }
}
