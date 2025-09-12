import 'package:b_stories/features/main/main_injector.dart';
import 'package:b_stories/features/splash/splash_injector.dart';

Future<void> setupInjector() async {
  // Khởi tạo các injector ở đây
  setupSplashInjector();
  setupMainInjector();
}
