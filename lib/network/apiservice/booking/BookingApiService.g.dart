// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BookingApiService.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BookingApiService implements BookingApiService {
  _BookingApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://10.0.2.2:8080/ripetizioniApi_war_exploded/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BookingList> getAll(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userId': userId};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookingList>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'bookingJson',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookingList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BookingList> bookClass(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = body;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookingList>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'bookingJson',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookingList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BookingList> update(bookingId, status) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'id': bookingId,
      r'status': status
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookingList>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'bookingJson',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookingList.fromJson(_result.data!);
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
