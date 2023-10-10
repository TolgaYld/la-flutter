import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import './domain/repositories/theme_repository.dart';
import './application/theme/theme_service.dart';
import './infrastructure/repositories/theme_repository_implementation.dart';
import './infrastructure/datasources/theme_local_datasources.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance; // sl == serviceLocator

Future<void> init() async {
  // Blocs

  // sl.registerFactory(() => AdvicerBloc(usecases: sl()));
  sl.registerLazySingleton<ThemeService>(
      () => ThemeServiceImplementation(themeRepository: sl()));

  // usecases

  // sl.registerLazySingleton(() => AdvicerUsecases(advicerRepository: sl()));

  // repos

  // sl.registerLazySingleton<AdvicerRepository>(
  //     () => AdvicerRepositoryImplementation(advicerRemoteDatasource: sl()));
  sl.registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImplementation(themeLocalDatasource: sl()));

  // datasources

  // sl.registerLazySingleton<AdvicerRemoteDatasource>(
  //     () => AdvicerRemoteDatasourceImplementation(client: sl()));
  sl.registerLazySingleton<ThemeLocalDatasource>(
      () => ThemeLocalDatasourceImplementation(sharedPreferences: sl()));

  // extern

  // sl.registerLazySingleton(() => http.Client());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
