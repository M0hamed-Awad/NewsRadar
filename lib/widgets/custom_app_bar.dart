import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading = const SizedBox(),
  });

  final Widget title, leading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: leading,
      toolbarHeight: 80,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      backgroundColor: kPrimaryPurpleColor,
      shadowColor: Colors.black,
      forceElevated: true,
      elevation: 10,
      floating: true,
      centerTitle: true,
      title: title,
    );
  }
}
