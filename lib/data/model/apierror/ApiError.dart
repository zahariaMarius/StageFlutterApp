import 'package:freezed_annotation/freezed_annotation.dart';

part 'ApiError.freezed.dart';
part 'ApiError.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({String? message, String? httpMessage, int? status}) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);
}