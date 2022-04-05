// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??=
        'https://x4hvqlt6g5.execute-api.ap-northeast-2.amazonaws.com/prod/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CalendarWrapper> fetchWeekdayCalendarData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CalendarWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'calendar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CalendarWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<HolidayWrapper> fetchHolidayCalendarData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HolidayWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'holiday',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HolidayWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LatestWrapper> getLatestEvents() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LatestWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'calendar/latest',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LatestWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NoticeWrapper> getNotices() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NoticeWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'notices',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NoticeWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BusInfoWrapper> getCityBusList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BusInfoWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'businfo',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BusInfoWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SpecificBusInfoWrapper> getCityBusInfo(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SpecificBusInfoWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'businfo/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SpecificBusInfoWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ShuttleNextWrapper> getNextShuttle() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ShuttleNextWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/shuttle/next',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ShuttleNextWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ShuttleTodayWrapper> getTodayShuttleInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ShuttleTodayWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/shuttle/today',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ShuttleTodayWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TimeTable190Wrapper> getTimeTable190() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TimeTable190Wrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/timetable/190',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TimeTable190Wrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WeatherWrapper> getWeatherInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WeatherWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'weather/now',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DietDormWrapper> getDormDiet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DietDormWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'diet/dorm/today',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DietDormWrapper.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
