import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig {
  static String get jaknaesoWebUri => dotenv.env['JAKNAESO_WEB_URI'] ?? "http://localhost:3000";

  static Future<void> loadEnv() async {
    await dotenv.load(fileName: ".env");
  }
}