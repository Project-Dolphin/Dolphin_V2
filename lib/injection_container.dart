// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/data/datasources/city_bus/city_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/city_bus/city_bus_remote_datasource.dart';
import 'package:oceanview/data/datasources/home_data/home_data_local_datasource.dart';
import 'package:oceanview/data/datasources/home_data/home_data_remote_datasource.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_remote_datasource.dart';
import 'package:oceanview/data/repositories/city_bus_repository_impl.dart';
import 'package:oceanview/data/repositories/home_data_repository_impl.dart';
import 'package:oceanview/data/repositories/shuttle_bus_repository_impl.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';
import 'package:oceanview/domain/usecases/get_notice_list.dart';
import 'package:oceanview/domain/usecases/get_next_shuttle_info.dart';
import 'package:oceanview/domain/usecases/get_today_shuttle_info.dart';
import 'package:oceanview/domain/usecases/get_weather_info.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/city_bus_bloc/city_bus_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance; //sl is referred to as Service Locator

//Dependency injection
Future<void> init() async {
  print('init');
  //Blocs
  sl.registerFactory(
    () => DashBoardBloc()
      ..add(
        DashBoardInited(),
      ),
  );
  sl.registerFactory(
    () => ShuttleBusBloc(
      getTodayShuttleInfo: sl(),
      getNextShuttleInfo: sl(),
    )..add(ShuttleBusInited()),
  );
  sl.registerFactory(
    () => CityBusBloc(getCityBusList: sl())..add(CityBusInited()),
  );
  sl.registerFactory(
    () => HomeDataBloc(getWeatherInfo: sl(), getNoticeList: sl())
      ..add(HomeDataInited()),
  );

  //Use cases
  sl.registerLazySingleton(() => GetCityBusList(repository: sl()));
  sl.registerLazySingleton(() => GetNextShuttleInfo(repository: sl()));
  sl.registerLazySingleton(() => GetTodayShuttleInfo(repository: sl()));
  sl.registerLazySingleton(() => GetNoticeList(repository: sl()));
  sl.registerLazySingleton(() => GetWeatherInfo(repository: sl()));

  //Repositories
  sl.registerLazySingleton<CityBusRepository>(() => CityBusRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));
  sl.registerLazySingleton<ShuttleBusRepository>(() => ShuttleBusRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));
  sl.registerLazySingleton<HomeDataRepository>(() => HomeDataRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));

  //Data sources
  sl.registerLazySingleton<CityBusRemoteDataSource>(
    () => CityBusRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<CityBusLocalDataSource>(
    () => CityBusLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );

  sl.registerLazySingleton<ShuttleBusRemoteDataSource>(
    () => ShuttleBusRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<ShuttleBusLocalDataSource>(
    () => ShuttleBusLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );

  sl.registerLazySingleton<HomeDataRemoteDataSource>(
    () => HomeDataRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<HomeDataLocalDataSource>(
    () => HomeDataLocalDataSourceImpl(
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
