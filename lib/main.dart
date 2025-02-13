import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jaknaeso_flutter/config/env_config.dart';
import 'package:jaknaeso_flutter/screen/webview_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvConfig.loadEnv();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MaterialApp(
      home: WebViewScreen(),
    ),
  );
}
