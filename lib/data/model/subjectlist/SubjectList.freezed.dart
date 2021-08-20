// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'SubjectList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectList _$SubjectListFromJson(Map<String, dynamic> json) {
  return _SubjectList.fromJson(json);
}

/// @nodoc
class _$SubjectListTearOff {
  const _$SubjectListTearOff();

  _SubjectList call(List<Subject> data) {
    return _SubjectList(
      data,
    );
  }

  SubjectList fromJson(Map<String, Object> json) {
    return SubjectList.fromJson(json);
  }
}

/// @nodoc
const $SubjectList = _$SubjectListTearOff();

/// @nodoc
mixin _$SubjectList {
  List<Subject> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectListCopyWith<SubjectList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectListCopyWith<$Res> {
  factory $SubjectListCopyWith(
          SubjectList value, $Res Function(SubjectList) then) =
      _$SubjectListCopyWithImpl<$Res>;
  $Res call({List<Subject> data});
}

/// @nodoc
class _$SubjectListCopyWithImpl<$Res> implements $SubjectListCopyWith<$Res> {
  _$SubjectListCopyWithImpl(this._value, this._then);

  final SubjectList _value;
  // ignore: unused_field
  final $Res Function(SubjectList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc
abstract class _$SubjectListCopyWith<$Res>
    implements $SubjectListCopyWith<$Res> {
  factory _$SubjectListCopyWith(
          _SubjectList value, $Res Function(_SubjectList) then) =
      __$SubjectListCopyWithImpl<$Res>;
  @override
  $Res call({List<Subject> data});
}

/// @nodoc
class __$SubjectListCopyWithImpl<$Res> extends _$SubjectListCopyWithImpl<$Res>
    implements _$SubjectListCopyWith<$Res> {
  __$SubjectListCopyWithImpl(
      _SubjectList _value, $Res Function(_SubjectList) _then)
      : super(_value, (v) => _then(v as _SubjectList));

  @override
  _SubjectList get _value => super._value as _SubjectList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SubjectList(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubjectList implements _SubjectList {
  const _$_SubjectList(this.data);

  factory _$_SubjectList.fromJson(Map<String, dynamic> json) =>
      _$_$_SubjectListFromJson(json);

  @override
  final List<Subject> data;

  @override
  String toString() {
    return 'SubjectList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubjectList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SubjectListCopyWith<_SubjectList> get copyWith =>
      __$SubjectListCopyWithImpl<_SubjectList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubjectListToJson(this);
  }
}

abstract class _SubjectList implements SubjectList {
  const factory _SubjectList(List<Subject> data) = _$_SubjectList;

  factory _SubjectList.fromJson(Map<String, dynamic> json) =
      _$_SubjectList.fromJson;

  @override
  List<Subject> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubjectListCopyWith<_SubjectList> get copyWith =>
      throw _privateConstructorUsedError;
}
