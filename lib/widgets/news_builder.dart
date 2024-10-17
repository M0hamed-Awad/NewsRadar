import 'package:flutter/material.dart';
import 'package:news_radar_app/models/article_model.dart';
import 'package:news_radar_app/widgets/news_future_builder.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({
    super.key,
    required this.onSuccess,
    required this.dataRequest,
  });

  final Widget Function(List<ArticleModel>) onSuccess;
  final Future<List<ArticleModel>> dataRequest;

  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {
  late Future<List<ArticleModel>> news;

  @override
  void initState() {
    super.initState();
    news = widget.dataRequest;
  }

  @override
  Widget build(BuildContext context) {
    return NewsFutureBuilder(
      futureRequest: news,
      onSuccess: widget.onSuccess,
    );
  }
}
