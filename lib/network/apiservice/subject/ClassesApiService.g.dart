// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ClassesApiService.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ClassesApiService implements ClassesApiService {
  _ClassesApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://10.0.2.2:8080/ripetizioniApi_war_exploded/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ClassesList> getAllClassesBySubject(booked, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'status': booked,
      r'subjectId': id
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClassesList>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'classJson',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClassesList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SubjectList> getGroupedClassesBySubject(grouped) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'grouped': grouped};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SubjectList>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'classJson',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SubjectList.fromJson(_result.data!);
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
