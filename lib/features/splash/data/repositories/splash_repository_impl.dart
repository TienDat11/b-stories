// data/repositories/splash_repository_impl.dart
import 'package:b_stories/features/splash/data/data-source/splash_local_datasource.dart';
import '../../domain/repositories/splash_repository.dart';

class SplashRepositoryImpl implements SplashRepository {
  final SplashLocalDataSource localDataSource;
  SplashRepositoryImpl(this.localDataSource);

  @override
  Future<bool> isFirstRun() => localDataSource.isFirstRun();
}
