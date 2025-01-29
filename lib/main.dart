import 'package:flutter/material.dart';
import 'package:jaknaeso_flutter/config/env_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvConfig.loadEnv();

  runApp(
    MaterialApp(
      home: Placeholder(),
    ),
  );
}
