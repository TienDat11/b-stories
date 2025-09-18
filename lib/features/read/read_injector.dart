import 'package:b_stories/features/read/presentation/read/bloc/read_bloc.dart';
import 'package:get_it/get_it.dart';

final readInjector = GetIt.instance;

void setupReadInjector() {
  // Repository
  // UseCases
  // Bloc
  readInjector.registerFactory(() => ReadBloc());
}
