// data/datasources/splash_local_datasource.dart
import 'package:shared_preferences/shared_preferences.dart';

class SplashLocalDataSource {
  static const String firstRunKey = "first_run";

  Future<bool> isFirstRun() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirst = prefs.getBool(firstRunKey) ?? true;
    if (isFirst) {
      await prefs.setBool(firstRunKey, false);
    }
    return isFirst;
  }
}
