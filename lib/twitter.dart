import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Pizza Store App',
        style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),),
    centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri("https://www.twitter.com")),
        onWebViewCreated: (InAppWebViewController controller) {
          // WebView controller created, you can add additional functionality here
        },
        initialSettings: InAppWebViewSettings(
          javaScriptEnabled: true,
        ),
      ),
    );
  }
}
   