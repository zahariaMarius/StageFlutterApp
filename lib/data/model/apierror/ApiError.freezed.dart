// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ApiError.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

/// @nodoc
class _$ApiErrorTearOff {
  const _$ApiErrorTearOff();

  _ApiError call({String? message, String? httpMessage, int? status}) {
    return _ApiError(
      message: message,
      httpMessage: httpMessage,
      status: status,
    );
  }

  ApiError fromJson(Map<String, Object> json) {
    return ApiError.fromJson(json);
  }
}

/// @nodoc
const $ApiError = _$ApiErrorTearOff();

/// @nodoc
mixin _$ApiError {
  String? get message => throw _privateConstructorUsedError;
  String? get httpMessage => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({String? message, String? httpMessage, int? status});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  final ApiError _value;
  // ignore: unused_field
  final $Res Function(ApiError) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? httpMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      httpMessage: httpMessage == freezed
          ? _value.httpMessage
          : httpMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? httpMessage, int? status});
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> extends _$ApiErrorCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;

  @override
  $Res call({
    Object? message = freezed,
    Object? httpMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_ApiError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      httpMessage: httpMessage == freezed
          ? _value.httpMessage
          : httpMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiError implements _ApiError {
  const _$_ApiError({this.message, this.httpMessage, this.status});

  factory _$_ApiError.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiErrorFromJson(json);

  @override
  final String? message;
  @override
  final String? httpMessage;
  @override
  final int? status;

  @override
  String toString() {
    return 'ApiError(message: $message, httpMessage: $httpMessage, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.httpMessage, httpMessage) ||
                const DeepCollectionEquality()
                    .equals(other.httpMessage, httpMessage)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(httpMessage) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiErrorToJson(this);
  }
}

abstract class _ApiError implements ApiError {
  const factory _ApiError({String? message, String? httpMessage, int? status}) =
      _$_ApiError;

  factory _ApiError.fromJson(Map<String, dynamic> json) = _$_ApiError.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get httpMessage => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
