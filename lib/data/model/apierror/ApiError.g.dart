// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiError.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiError _$_$_ApiErrorFromJson(Map<String, dynamic> json) {
  return _$_ApiError(
    message: json['message'] as String?,
    httpMessage: json['httpMessage'] as String?,
    status: json['status'] as int?,
  );
}

Map<String, dynamic> _$_$_ApiErrorToJson(_$_ApiError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'httpMessage': instance.httpMessage,
      'status': instance.status,
    };
