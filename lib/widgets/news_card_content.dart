import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/widgets/custom_cached_network_image.dart';

class NewsCardContent extends StatelessWidget {
  const NewsCardContent({
    super.key,
    required this.newsArticle,
  });

  final ArticleModel newsArticle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCachedNetworkImage(
          height: 250,
          imageUrl: newsArticle.urlToImage,
        ),
        const SizedBox(
          height: 10,
        ),
        _buildNewsCardTitle(context),
        _buildNewsCardDescription(),
      ],
    );
  }

  Container _buildNewsCardDescription() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          newsArticle.description!,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16,
            color: Color(0xFF626262),
          ),
        ),
      );
  }

  Container _buildNewsCardTitle(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width,
      child: RichText(
        text: TextSpan(
          text: "${newsArticle.title} - ",
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: newsArticle.author,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: kRedColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
