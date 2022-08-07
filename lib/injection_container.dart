// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:oceanview/core/network/interceptor.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/core/utils/constants.dart';
import 'package:oceanview/core/utils/notification_utils.dart';
import 'package:oceanview/data/datasources/city_bus/city_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/city_bus/city_bus_remote_datasource.dart';
import 'package:oceanview/data/datasources/diet/diet_local_datasource.dart';
import 'package:oceanview/data/datasources/diet/diet_remote_datasource.dart';
import 'package:oceanview/data/datasources/event/event_local_datasource.dart';
import 'package:oceanview/data/datasources/event/event_remote_datasource.dart';
import 'package:oceanview/data/datasources/home_data/home_data_local_datasource.dart';
import 'package:oceanview/data/datasources/home_data/home_data_remote_datasource.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_remote_datasource.dart';
import 'package:oceanview/data/repositories/city_bus_repository_impl.dart';
import 'package:oceanview/data/repositories/diet_repository_impl.dart';
import 'package:oceanview/data/repositories/event_repository_impl.dart';
import 'package:oceanview/data/repositories/home_data_repository_impl.dart';
import 'package:oceanview/data/repositories/shuttle_bus_repository_impl.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';
import 'package:oceanview/domain/repositories/diet_repository.dart';
import 'package:oceanview/domain/repositories/event_repository.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';
import 'package:oceanview/domain/usecases/get_190_time_table.dart';
import 'package:oceanview/domain/usecases/get_diet_data.dart';
import 'package:oceanview/domain/usecases/get_dorm_diet.dart';
import 'package:oceanview/domain/usecases/get_holiday_event.dart';
import 'package:oceanview/domain/usecases/get_init_data.dart';
import 'package:oceanview/domain/usecases/get_latest_event.dart';
import 'package:oceanview/domain/usecases/get_next_shuttle_info.dart';
import 'package:oceanview/domain/usecases/get_notice_list.dart';
import 'package:oceanview/domain/usecases/get_running_city_bus_list.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';
import 'package:oceanview/domain/usecases/get_weather_info.dart';
import 'package:oceanview/domain/usecases/get_weekday_event.dart';
import 'package:oceanview/domain/usecases/get_weekday_event_with_month.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/splash_page_bloc/splash_page_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_101_bloc/line_101_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_186_bloc/line_186_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_190_bloc/line_190_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_30_bloc/line_30_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_66_bloc/line_66_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_88_bloc/line_88_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_8_bloc/line_8_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/running_bus_bloc/running_bus_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/setting_bloc/setting_bloc.dart';
import 'presentation/blocs/diet_page_bloc/diet_page_bloc.dart';

final sl = GetIt.instance; //sl is referred to as Service Locator

final prettyDioLogger = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
  responseBody: true,
  responseHeader: false,
  error: true,
  compact: true,
  maxWidth: 90,
);

//Dependency injection
// ignore: long-method
Future<void> init() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
  await NotificationManager.init();

  //Blocs

  sl.registerFactory(
    () => SettingBloc(sharedPreferences),
  );
  sl.registerFactory(
    () => SplashPageBloc()..add(SplashPageInited()),
  );
  sl.registerFactory(
    () => DashBoardBloc(),
  );
  sl.registerFactory(
    () => DietPageBloc(),
  );
  sl.registerFactory(
    () => ShuttleBusBloc(
      getNextShuttleInfo: sl(),
    )..add(ShuttleBusInited()),
  );
  sl.registerFactory(
    () => Line8Bloc(getSpecificNodeBusInfo: sl())
      ..add(
        FetchLine8Info(),
      ),
  );
  sl.registerFactory(
    () => Line30Bloc(getSpecificNodeBusInfo: sl())
      ..add(
        FetchLine30Info(),
      ),
  );
  sl.registerFactory(
    () => Line66Bloc(getSpecificNodeBusInfo: sl())
      ..add(
        FetchLine66Info(),
      ),
  );
  sl.registerFactory(
    () => Line88Bloc(getSpecificNodeBusInfo: sl())
      ..add(
        FetchLine88Info(),
      ),
  );
  sl.registerFactory(
    () => Line101Bloc(getSpecificNodeBusInfo: sl())
      ..add(
        FetchLine101Info(),
      ),
  );
  sl.registerFactory(
    () => Line186Bloc(getSpecificNodeBusInfo: sl())
      ..add(
        FetchLine186Info(),
      ),
  );
  sl.registerFactory(
    () => Line190Bloc(getSpecificNodeBusInfo: sl(), get190timeTable: sl())
      ..add(
        FetchLine190Info(),
      ),
  );
  sl.registerFactory(
    () => RunningBusPageBloc(getOperationCityBusList: sl())
      ..add(RunningBusPageInited()),
  );
  sl.registerFactory(
    () => HomeDataBloc(
      getInitData: sl(),
      getLatestEvent: sl(),
      getNoticeList: sl(),
      getWeatherInfo: sl(),
    )..add(HomeDataInited()),
  );
  sl.registerFactory(
    () => DietDataBloc(
      getDormDiet: sl(),
      getDietData: sl(),
    )..add(DormDataInited()),
  );
  sl.registerFactory(
    () => CampusEventBloc(
      getHolidayEvent: sl(),
      getWeekdayEvent: sl(),
      getAllEvent: sl(),
    )..add(CampusEventInited()),
  );

  //Use cases
  sl.registerLazySingleton(() => GetOperationCityBusList(repository: sl()));
  sl.registerLazySingleton(() => GetNextShuttleInfo(repository: sl()));
  sl.registerLazySingleton(() => GetNoticeList(repository: sl()));
  sl.registerLazySingleton(() => GetLatestEvent(repository: sl()));
  sl.registerLazySingleton(() => GetWeatherInfo(repository: sl()));
  sl.registerLazySingleton(() => GetDormDiet(repository: sl()));
  sl.registerLazySingleton(() => GetInitData(repository: sl()));
  sl.registerLazySingleton(() => GetDietData(repository: sl()));
  sl.registerLazySingleton(() => GetHolidayEvent(repository: sl()));
  sl.registerLazySingleton(() => GetWeekdayEvent(repository: sl()));
  sl.registerLazySingleton(() => GetWeekdayEventWithMonth(repository: sl()));
  sl.registerLazySingleton(() => GetSpecificNodeBusInfo(repository: sl()));
  sl.registerLazySingleton(() => Get190TimeTable(repository: sl()));

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
  sl.registerLazySingleton<DietRepository>(() => DietRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));
  sl.registerLazySingleton<EventRepository>(() => EventRepositoryImpl(
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

  sl.registerLazySingleton<DietRemoteDataSource>(
    () => DietRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<DietLocalDataSource>(
    () => DietLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );
  sl.registerLazySingleton<EventRemoteDataSource>(
    () => EventRemoteDataSourceImpl(
      restClientService: sl(),
    ),
  );
  sl.registerLazySingleton<EventLocalDataSource>(
    () => EventLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );

  //Core
  // sl.registerLazySingleton<T>(
  //   () => ()),
  // );

  //External

  final dio = Dio(
    BaseOptions(
      receiveDataWhenStatusError: true,
      followRedirects: true,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
    ),
  );
  dio.interceptors.add(prettyDioLogger);
  dio.interceptors.add(RetryOnConnectionChangeInterceptor(dio: dio));

  sl.registerLazySingleton(
    () => RestClient(
      dio,
      baseUrl: AppConstants.API_BASE_URL,
    ),
  );
}
