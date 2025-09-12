// domain/usecases/check_first_run_usecase.dart
import '../repositories/splash_repository.dart';

class CheckFirstRunUseCase {
  final SplashRepository repository;
  CheckFirstRunUseCase(this.repository);

  Future<bool> call() async {
    return await repository.isFirstRun();
  }
}
