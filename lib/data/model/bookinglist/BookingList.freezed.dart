// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'BookingList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingList _$BookingListFromJson(Map<String, dynamic> json) {
  return _BookingList.fromJson(json);
}

/// @nodoc
class _$BookingListTearOff {
  const _$BookingListTearOff();

  _BookingList call(List<Booking> data) {
    return _BookingList(
      data,
    );
  }

  BookingList fromJson(Map<String, Object> json) {
    return BookingList.fromJson(json);
  }
}

/// @nodoc
const $BookingList = _$BookingListTearOff();

/// @nodoc
mixin _$BookingList {
  List<Booking> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingListCopyWith<BookingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingListCopyWith<$Res> {
  factory $BookingListCopyWith(
          BookingList value, $Res Function(BookingList) then) =
      _$BookingListCopyWithImpl<$Res>;
  $Res call({List<Booking> data});
}

/// @nodoc
class _$BookingListCopyWithImpl<$Res> implements $BookingListCopyWith<$Res> {
  _$BookingListCopyWithImpl(this._value, this._then);

  final BookingList _value;
  // ignore: unused_field
  final $Res Function(BookingList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
    ));
  }
}

/// @nodoc
abstract class _$BookingListCopyWith<$Res>
    implements $BookingListCopyWith<$Res> {
  factory _$BookingListCopyWith(
          _BookingList value, $Res Function(_BookingList) then) =
      __$BookingListCopyWithImpl<$Res>;
  @override
  $Res call({List<Booking> data});
}

/// @nodoc
class __$BookingListCopyWithImpl<$Res> extends _$BookingListCopyWithImpl<$Res>
    implements _$BookingListCopyWith<$Res> {
  __$BookingListCopyWithImpl(
      _BookingList _value, $Res Function(_BookingList) _then)
      : super(_value, (v) => _then(v as _BookingList));

  @override
  _BookingList get _value => super._value as _BookingList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_BookingList(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingList implements _BookingList {
  const _$_BookingList(this.data);

  factory _$_BookingList.fromJson(Map<String, dynamic> json) =>
      _$_$_BookingListFromJson(json);

  @override
  final List<Booking> data;

  @override
  String toString() {
    return 'BookingList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$BookingListCopyWith<_BookingList> get copyWith =>
      __$BookingListCopyWithImpl<_BookingList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookingListToJson(this);
  }
}

abstract class _BookingList implements BookingList {
  const factory _BookingList(List<Booking> data) = _$_BookingList;

  factory _BookingList.fromJson(Map<String, dynamic> json) =
      _$_BookingList.fromJson;

  @override
  List<Booking> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookingListCopyWith<_BookingList> get copyWith =>
      throw _privateConstructorUsedError;
}
