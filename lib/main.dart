// Flutter imports:
import 'package:b_stories/features/app/app.dart';
import 'package:b_stories/features/setup_injector.dart';
import 'package:flutter/material.dart';

Future<void> initial() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
}

Future<void> main() async {
  await initial();
  runApp(App());
}
