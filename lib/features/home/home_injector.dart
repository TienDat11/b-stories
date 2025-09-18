import 'package:b_stories/features/home/presentation/home/bloc/home_bloc.dart';
import 'package:b_stories/features/home/data/repository/home_repository.dart';
import 'package:get_it/get_it.dart';

final homeInjector = GetIt.instance;

void setupHomeInjector() {
  // Repository
  homeInjector.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryMock(),
  );

  // Bloc - Sử dụng Singleton để tránh tạo mới khi chuyển trang
  homeInjector.registerLazySingleton<HomeBloc>(
    () => HomeBloc(homeRepository: homeInjector<HomeRepository>()),
  );
}
