import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_radar_app/widgets/custom_loading_indicator.dart';
import 'package:news_radar_app/widgets/rounded_image.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    required this.height,
  });

  final String? imageUrl;
  final double height;

  // final String defaultImageUrl =
  //     'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png';

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      placeholder: (context, url) => const Center(
        child: CustomLoadingIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        color: Colors.redAccent,
        size: 100,
      ),
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => RoundedImage(
        image: imageProvider,
        width: MediaQuery.of(context).size.width,
        height: height,
      ),
    );
  }
}
