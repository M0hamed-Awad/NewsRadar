import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/views/gaza_news_view.dart';
import 'package:news_radar_app/widgets/gaza_news_card.dart';
import 'package:news_radar_app/widgets/news_title_section.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GazaNewsSlider extends StatefulWidget {
  const GazaNewsSlider({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  State<GazaNewsSlider> createState() => _GazaNewsSliderState();
}

class _GazaNewsSliderState extends State<GazaNewsSlider> {
  int activeIndex = 0, newsCount = 5;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewsTitleSection(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GazaNewsView(),
                ),
              );
            },
            middleWidget: const Text(
              "🔻",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            title: "Gaza News!",
          ),
          _buildCarouselSlider(),
          const SizedBox(
            height: 20,
          ),
          _buildSliderIndicator(),
        ],
      ),
    );
  }

  Center _buildSliderIndicator() {
    return Center(
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: newsCount,
        effect: const ExpandingDotsEffect(
          expansionFactor: 2,
          activeDotColor: kSecondaryOrangeColor,
        ),
      ),
    );
  }

  CarouselSlider _buildCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: newsCount,
      itemBuilder: (context, index, realIndex) {
        return GazaNewsCard(newsArticle: widget.articles[index]);
      },
      options: CarouselOptions(
        clipBehavior: Clip.none,
        autoPlay: true,
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        enlargeFactor: 0.4,
        onPageChanged: (index, reason) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
    );
  }
}
