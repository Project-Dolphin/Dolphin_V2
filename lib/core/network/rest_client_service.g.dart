// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityBusData _$CityBusDataFromJson(Map<String, dynamic> json) => CityBusData(
      carNo: json['carNo'] as String?,
      nodeId: json['nodeId'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lin: (json['lin'] as num?)?.toDouble(),
      gpsym: json['gpsym'] as int?,
      bstopnm: json['bstopnm'] as String?,
    );

Map<String, dynamic> _$CityBusDataToJson(CityBusData instance) =>
    <String, dynamic>{
      'carNo': instance.carNo,
      'nodeId': instance.nodeId,
      'lat': instance.lat,
      'lin': instance.lin,
      'gpsym': instance.gpsym,
      'bstopnm': instance.bstopnm,
    };

Term _$TermFromJson(Map<String, dynamic> json) => Term(
      startedAt: json['startedAt'] as String?,
      endedAt: json['endedAt'] as String?,
    );

Map<String, dynamic> _$TermToJson(Term instance) => <String, dynamic>{
      'startedAt': instance.startedAt,
      'endedAt': instance.endedAt,
    };

CalendarData _$CalendarDataFromJson(Map<String, dynamic> json) => CalendarData(
      term: json['term'] == null
          ? null
          : Term.fromJson(json['term'] as Map<String, dynamic>),
      content: json['content'] as String?,
      mainPlan: json['mainPlan'] as bool?,
    );

Map<String, dynamic> _$CalendarDataToJson(CalendarData instance) =>
    <String, dynamic>{
      'term': instance.term,
      'content': instance.content,
      'mainPlan': instance.mainPlan,
    };

CalendarHomeData _$CalendarHomeDataFromJson(Map<String, dynamic> json) =>
    CalendarHomeData(
      term: json['term'] == null
          ? null
          : Term.fromJson(json['term'] as Map<String, dynamic>),
      content: json['content'] as String?,
      mainPlan: json['mainPlan'] as bool?,
      dDay: json['dDay'] as int?,
    );

Map<String, dynamic> _$CalendarHomeDataToJson(CalendarHomeData instance) =>
    <String, dynamic>{
      'term': instance.term,
      'content': instance.content,
      'mainPlan': instance.mainPlan,
      'dDay': instance.dDay,
    };

HolidayData _$HolidayDataFromJson(Map<String, dynamic> json) => HolidayData(
      term: json['term'] == null
          ? null
          : Term.fromJson(json['term'] as Map<String, dynamic>),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$HolidayDataToJson(HolidayData instance) =>
    <String, dynamic>{
      'term': instance.term,
      'content': instance.content,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      status: json['status'] as String? ?? '',
      temparature: json['temparature'] as String? ?? '',
      windSpeed: json['windSpeed'] as String? ?? '',
      humidity: json['humidity'] as String? ?? '',
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'status': instance.status,
      'temparature': instance.temparature,
      'windSpeed': instance.windSpeed,
      'humidity': instance.humidity,
    };

MealData _$MealDataFromJson(Map<String, dynamic> json) => MealData(
      type: json['type'] ?? 99,
      value: json['value'] as List<dynamic>? ?? const ['식단이 없어요'],
    );

Map<String, dynamic> _$MealDataToJson(MealData instance) => <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

Notice _$NoticeFromJson(Map<String, dynamic> json) => Notice(
      title: json['title'] as String?,
      link: json['link'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$NoticeToJson(Notice instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'date': instance.date,
    };

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
  Future<List<CalendarData>> fetchWeekdayCalendarData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CalendarData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'calendar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => CalendarData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<HolidayData>> fetchHolidayCalendarData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<HolidayData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'holiday',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => HolidayData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<CalendarHomeData>> fetchHomeCalendarData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CalendarHomeData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'calendar/latest',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map(
            (dynamic i) => CalendarHomeData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Notice>> getNotices() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Notice>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'notices',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Notice.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Map<String, List<CityBusData>>> getCityBusList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, List<CityBusData>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'businfo',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!.map((k, dynamic v) => MapEntry(
        k,
        (v as List)
            .map((i) => CityBusData.fromJson(i as Map<String, dynamic>))
            .toList()));
    return value;
  }

  @override
  Future<CityBusData> getCityBusInfo(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CityBusData>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'businfo/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CityBusData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Weather> getWeatherInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Weather>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'weather/now',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Weather.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<MealData>> getTeriaDiet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<MealData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'diet/v2/society/today',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MealData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<MealData>> getNavalDiet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<MealData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'diet/naval/today',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MealData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<MealData>> getDormDiet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<MealData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'diet/dorm/today',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MealData.fromJson(i as Map<String, dynamic>))
        .toList();
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
