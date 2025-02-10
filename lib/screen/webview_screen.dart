import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:jaknaeso_flutter/config/env_config.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    final uri = Uri.parse(EnvConfig.jaknaesoWebUri);
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..enableZoom(false)
      ..loadRequest(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Scaffold(
          resizeToAvoidBottomInset: !Platform.isIOS,
          body: WebViewWidget(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
