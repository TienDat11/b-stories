import 'package:b_stories/features/search/presentation/bloc/search_bloc.dart';
import 'package:get_it/get_it.dart';

final searchInjector = GetIt.instance;
void setupAuthInjector() {
  //data
  //doamin
  //Bloc
  searchInjector.registerFactory(() => SearchBloc());
}
