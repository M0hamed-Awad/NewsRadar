import 'package:flutter/material.dart';
import 'package:news_radar_app/constants.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/widgets/custom_loading_indicator.dart';

class NewsFutureBuilder extends StatelessWidget {
  const NewsFutureBuilder({
    super.key,
    required this.futureRequest,
    required this.onSuccess,
  });

  final Future<List<ArticleModel>> futureRequest;
  final Widget Function(List<ArticleModel> data) onSuccess;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureRequest,
      builder: (context, snapshot) {
        // Data Fetched Successfully
        if (snapshot.hasData) {
          return onSuccess(snapshot.data!);
        }
        // Failed To Fetch The Data
        else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Icon(
                Icons.error,
                color: kRedColor,
                size: 100,
              ),
            ),
          );
        }
        // Fetching The Data [Loading]
        else {
          return const SliverFillRemaining(
            child: Center(
              child: CustomLoadingIndicator(),
            ),
          );
        }
      },
    );
  }
}
