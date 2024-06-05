// injection_container.dart
import 'package:admain/core/network/network_info.dart';import 'package:admain/core/network/network_info.dart';
import 'package:admain/features/show/data/datasources/show_remote_data_sources.dart';
import 'package:admain/features/show/data/repositories/show_repository_impl.dart';
import 'package:admain/features/show/domain/repositories/show_repository.dart';
import 'package:admain/features/show/domain/usecases/show_Products_use_case.dart';
import 'package:admain/features/show/domain/usecases/show_all_user_use_case.dart';
import 'package:admain/features/show/domain/usecases/show_category_use_case.dart';
import 'package:admain/features/show/domain/usecases/show_sub_category_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;
final sl = GetIt.instance;
Future<void> init() async {
// Features - Show
// Use cases
 sl.registerLazySingleton(() => ShowAllUserUseCase(repository: sl()));
 sl.registerLazySingleton(() => ShowProductsUseCase(repository: sl()));
sl.registerLazySingleton(() => ShowCategoryUseCase(repository: sl()));
sl.registerLazySingleton(() => ShowSubCategoryUseCase(repository: sl()));

// Repository
sl.registerLazySingleton<ShowRepository>(() => ShowRepositoryImple(showRemoteDataSource: sl(), networkInfo: sl()));


// Data sources
sl.registerLazySingleton<ShowRemoteDataSource>(() => ShowRemoteDataSourceImpl(client: sl()));


  // *core// *
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  // *External// *

  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());



}