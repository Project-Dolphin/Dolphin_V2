// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/screens/dashboard/data/datasources/dashboard_local_datasource.dart';
import 'package:oceanview/screens/dashboard/data/datasources/dashboard_remote_datasource.dart';
import 'package:oceanview/screens/dashboard/data/repositories/dashabord_repository_impl.dart';
import 'package:oceanview/screens/dashboard/domain/repositories/home_repository.dart';
import 'package:oceanview/screens/dashboard/presentation/blocs/fetch_data/fetch_data_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance; //sl is referred to as Service Locator

//Dependency injection
Future<void> init() async {
  //Blocs
  sl.registerFactory(
    () => DashboardBloc()..add(RefreshBusEvent()),
  );

  //Use cases
  sl.registerLazySingleton(() => () {});

  //Repositories
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));

  //Data sources
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );

  //Core
  // sl.registerLazySingleton<T>(
  //   () => ()),
  // );

  //External
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  final dio = Dio();
  final client = RestClient(dio);
}
