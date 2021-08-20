// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ClassesList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassesList _$ClassesListFromJson(Map<String, dynamic> json) {
  return _ClassesList.fromJson(json);
}

/// @nodoc
class _$ClassesListTearOff {
  const _$ClassesListTearOff();

  _ClassesList call(List<Classes> data) {
    return _ClassesList(
      data,
    );
  }

  ClassesList fromJson(Map<String, Object> json) {
    return ClassesList.fromJson(json);
  }
}

/// @nodoc
const $ClassesList = _$ClassesListTearOff();

/// @nodoc
mixin _$ClassesList {
  List<Classes> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassesListCopyWith<ClassesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassesListCopyWith<$Res> {
  factory $ClassesListCopyWith(
          ClassesList value, $Res Function(ClassesList) then) =
      _$ClassesListCopyWithImpl<$Res>;
  $Res call({List<Classes> data});
}

/// @nodoc
class _$ClassesListCopyWithImpl<$Res> implements $ClassesListCopyWith<$Res> {
  _$ClassesListCopyWithImpl(this._value, this._then);

  final ClassesList _value;
  // ignore: unused_field
  final $Res Function(ClassesList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Classes>,
    ));
  }
}

/// @nodoc
abstract class _$ClassesListCopyWith<$Res>
    implements $ClassesListCopyWith<$Res> {
  factory _$ClassesListCopyWith(
          _ClassesList value, $Res Function(_ClassesList) then) =
      __$ClassesListCopyWithImpl<$Res>;
  @override
  $Res call({List<Classes> data});
}

/// @nodoc
class __$ClassesListCopyWithImpl<$Res> extends _$ClassesListCopyWithImpl<$Res>
    implements _$ClassesListCopyWith<$Res> {
  __$ClassesListCopyWithImpl(
      _ClassesList _value, $Res Function(_ClassesList) _then)
      : super(_value, (v) => _then(v as _ClassesList));

  @override
  _ClassesList get _value => super._value as _ClassesList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ClassesList(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Classes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassesList implements _ClassesList {
  const _$_ClassesList(this.data);

  factory _$_ClassesList.fromJson(Map<String, dynamic> json) =>
      _$_$_ClassesListFromJson(json);

  @override
  final List<Classes> data;

  @override
  String toString() {
    return 'ClassesList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClassesList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ClassesListCopyWith<_ClassesList> get copyWith =>
      __$ClassesListCopyWithImpl<_ClassesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClassesListToJson(this);
  }
}

abstract class _ClassesList implements ClassesList {
  const factory _ClassesList(List<Classes> data) = _$_ClassesList;

  factory _ClassesList.fromJson(Map<String, dynamic> json) =
      _$_ClassesList.fromJson;

  @override
  List<Classes> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClassesListCopyWith<_ClassesList> get copyWith =>
      throw _privateConstructorUsedError;
}
