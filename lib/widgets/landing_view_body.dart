import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';
import 'package:news_radar_app/views/home_view.dart';
import 'package:news_radar_app/widgets/custom_button.dart';
import 'package:news_radar_app/widgets/rounded_image.dart';

class LandingViewBody extends StatelessWidget {
  const LandingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedImage(
          height: MediaQuery.of(context).size.height / 1.8,
          width: MediaQuery.of(context).size.width,
          image: const AssetImage(kLandingPageImage),
        ),
        const Spacer(),
        const Text(
          "Stay Ahead with Fast, Global News.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        const Spacer(),
        const Text(
          "Your Source for Real-Time Updates Across Every Category, from Every Corner of the Globe.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        CustomButton(
          title: "Get Started Now!",
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
