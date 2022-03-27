// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/data/datasources/bus_local_datasource.dart';
import 'package:oceanview/data/datasources/bus_remote_datasource.dart';
import 'package:oceanview/data/repositories/bus_repository_impl.dart';
import 'package:oceanview/domain/repositories/bus_repository.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';
import 'package:oceanview/presentation/blocs/dash_board/dash_board_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance; //sl is referred to as Service Locator

//Dependency injection
Future<void> init() async {
  //Blocs
  sl.registerFactory(
    () => DashboardBloc(getCityBusList: sl())..add(PageInited()),
  );

  //Use cases
  sl.registerLazySingleton(() => GetCityBusList(repository: sl()));

  //Repositories
  sl.registerLazySingleton<BusRepository>(() => BusRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));

  //Data sources
  sl.registerLazySingleton<BusRemoteDataSource>(
    () => BusRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<BusLocalDataSource>(
    () => BusLocalDataSourceImpl(
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
  final dio = Dio();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => RestClient(dio));
}
