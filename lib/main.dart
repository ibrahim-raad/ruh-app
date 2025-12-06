import 'package:flutter/material.dart';
import 'app.dart';
import 'core/di/injection.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await configureDependencies();
  runApp(const App());
}
