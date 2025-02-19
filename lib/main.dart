import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:jaknaeso_flutter/config/env_config.dart';
import 'package:jaknaeso_flutter/screen/webview_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  await EnvConfig.loadEnv();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MaterialApp(
      home: WebViewScreen(),
    ),
  );

  Future.delayed(Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
}
