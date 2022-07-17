// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CalendarAllWrapper> getMainData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CalendarAllWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CalendarAllWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CalendarAllWrapper> getWeekdayCalendarData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CalendarAllWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'calendar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CalendarAllWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CalendarMonthWrapper> getWeekdayCalendarDataWithMonth(
      year, month) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'year': year, r'month': month};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CalendarMonthWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'calendar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CalendarMonthWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<HolidayWrapper> getHolidayCalendarData() async {
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
  Future<List<NoticeData>> getNotices() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<NoticeData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'notices',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => NoticeData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<DietData>> getDietData(dietTime, dietType) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'at': dietTime,
      r'where': dietType
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<DietData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'diet',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => DietData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<NodeInfoData> getSpecificNodeBusInfo(busStopName, busNumber) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'busStopName': busStopName,
      r'busNumber': busNumber
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NodeInfoData>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bus/time',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NodeInfoData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SpecificBusInfoWrapper> getOperationBusInfo(busNumber) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'busNumber': busNumber};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SpecificBusInfoWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bus/info',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SpecificBusInfoWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NextDepart190Wrapper> getTimeTable190() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NextDepart190Wrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bus/departbus',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NextDepart190Wrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ShuttleNextWrapper> getShuttleInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ShuttleNextWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bus/nextshuttle',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ShuttleNextWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WeatherData> getWeatherInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WeatherData>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'weather/now',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DietSocietyWrapper> getCafeDiet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DietSocietyWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'diet/v2/society/today',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DietSocietyWrapper.fromJson(_result.data!);
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
