import 'package:allinoneapp/provider/home_provider.dart';
import 'package:allinoneapp/provider/splash_provider.dart';
import 'package:allinoneapp/provider/theme_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repository/home_repo.dart';
import 'data/repository/splash_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Repository
  sl.registerLazySingleton(() => SplashRepo(sharedPreferences: sl()));
  sl.registerLazySingleton(() => HomeRepo(sharedPreferences: sl()));
  // Provider
  sl.registerFactory(() => ThemeProvider(sharedPreferences: sl()));
  sl.registerFactory(() => SplashProvider(splashRepo: sl()));
  sl.registerFactory(() => HomeProvider(homeRepo: sl()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
