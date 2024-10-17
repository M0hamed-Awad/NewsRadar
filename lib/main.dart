import 'package:flutter/material.dart';
import 'package:news_radar_app/views/landing_view.dart';

void main() {
  runApp(const NewsRadarApp());
}

class NewsRadarApp extends StatelessWidget {
  const NewsRadarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingView(),
    );
  }
}