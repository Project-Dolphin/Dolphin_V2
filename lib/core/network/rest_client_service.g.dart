// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityBusData _$CityBusDataFromJson(Map<String, dynamic> json) => CityBusData(
      carNo1: json['carNo1'] as int?,
      carNo2: json['carNo2'] as int?,
      min1: json['min1'] as int?,
      min2: json['min2'] as int?,
      station1: json['station1'] as int?,
      station2: json['station2'] as int?,
      lowplate1: json['lowplate1'] as bool?,
      lowplate2: json['lowplate2'] as bool?,
    );

Map<String, dynamic> _$CityBusDataToJson(CityBusData instance) =>
    <String, dynamic>{
      'carNo1': instance.carNo1,
      'carNo2': instance.carNo2,
      'min1': instance.min1,
      'min2': instance.min2,
      'station1': instance.station1,
      'station2': instance.station2,
      'lowplate1': instance.lowplate1,
      'lowplate2': instance.lowplate2,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'x4hvqlt6g5.execute-api.ap-northeast-2.amazonaws.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<CityBusData>> getCityBusList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CityBusData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/businfo',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => CityBusData.fromJson(i as Map<String, dynamic>))
        .toList();
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
                .compose(_dio.options, '/businfo/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CityBusData.fromJson(_result.data!);
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
