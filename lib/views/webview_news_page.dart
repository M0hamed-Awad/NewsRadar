import 'package:flutter/material.dart';
import 'package:news_radar_app/widgets/custom_loading_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewNewsPage extends StatefulWidget {
  const WebviewNewsPage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<WebviewNewsPage> createState() => _WebviewNewsPageState();
}

class _WebviewNewsPageState extends State<WebviewNewsPage> {
  late final WebViewController _webViewController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
          onWebResourceError: (error) {
            throw Exception("Web resource error: ${error.description}");
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 10,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            WebViewWidget(controller: _webViewController),
            if (isLoading)
              const Center(
                child: CustomLoadingIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
