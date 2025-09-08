import 'package:b_stories/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

final authInjector = GetIt.instance;
void setupAuthInjector() {
  //data
  //doamin
  //Bloc
  authInjector.registerFactory(() => LoginBloc());
}
