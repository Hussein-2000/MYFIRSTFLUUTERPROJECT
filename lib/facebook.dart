import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Pizza Store App',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
            url: WebUri("https://www.facebook.com")), // Use WebUri here
        onWebViewCreated: (InAppWebViewController controller) {
          // WebView controller created, you can add additional functionality here
        },
        initialSettings: InAppWebViewSettings(
          // Use initialSettings instead of initialOptions
          javaScriptEnabled: true,
        ),
      ),
    );
  }
}
