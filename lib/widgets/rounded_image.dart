import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.image,
    required this.height,
    this.width = 150,
    this.borderRadius = 8,
  });

  final ImageProvider<Object> image;
  final double width, height, borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image(
        height: height,
        width: width,
        image: image,
        fit: BoxFit.cover,
      ),
    );
  }
}
