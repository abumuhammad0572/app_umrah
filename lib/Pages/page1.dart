import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late WebViewController _controller;
  final filename = 'ppp.html';
  // void _loadHtmlFromAssets() async {
  //   String fileText = await rootBundle.loadString('assets/ppp.html');
  //   _controller.loadUrl( Uri.dataFromString(
  //       fileText,
  //       mimeType: 'text/html',
  //       encoding: Encoding.getByName('utf-8')
  //   ).toString());
  // }
  Future<void> loadHtmlFromAssets(String filename, controller) async {
    String fileText = await rootBundle.loadString(filename);
    controller.loadUrl(Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8'),
    ).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text('1. Об обязанности совершения умры'),
      ),
      body: SingleChildScrollView(
        child: WebView(
          // onWebViewCreated: (WebViewController webViewController) {
          //   _controller = webViewController;
          //   _loadHtmlFromAssets();
          // },
          initialUrl: '',
          onWebViewCreated: (WebViewController webViewController) async {
            _controller = webViewController;
            await loadHtmlFromAssets('assets/ppp.html', _controller);
          },
        ),
      ),
    );
  }
}
