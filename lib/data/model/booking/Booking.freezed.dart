// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'Booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
class _$BookingTearOff {
  const _$BookingTearOff();

  _Booking call(
      {@HiveField(0) int? id,
      @HiveField(1) int? date,
      @HiveField(2) String? status,
      @HiveField(3) int? classId,
      @HiveField(4) String? classDay,
      @HiveField(5) int? classTime,
      @HiveField(6) int? subjectId,
      @HiveField(7) String? subject,
      @HiveField(8) int? teacherId,
      @HiveField(9) String? teacherName,
      @HiveField(10) String? teacherLastname}) {
    return _Booking(
      id: id,
      date: date,
      status: status,
      classId: classId,
      classDay: classDay,
      classTime: classTime,
      subjectId: subjectId,
      subject: subject,
      teacherId: teacherId,
      teacherName: teacherName,
      teacherLastname: teacherLastname,
    );
  }

  Booking fromJson(Map<String, Object> json) {
    return Booking.fromJson(json);
  }
}

/// @nodoc
const $Booking = _$BookingTearOff();

/// @nodoc
mixin _$Booking {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get date => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get classId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get classDay => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get classTime => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get subjectId => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get subject => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get teacherId => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get teacherName => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get teacherLastname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) int? date,
      @HiveField(2) String? status,
      @HiveField(3) int? classId,
      @HiveField(4) String? classDay,
      @HiveField(5) int? classTime,
      @HiveField(6) int? subjectId,
      @HiveField(7) String? subject,
      @HiveField(8) int? teacherId,
      @HiveField(9) String? teacherName,
      @HiveField(10) String? teacherLastname});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res> implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  final Booking _value;
  // ignore: unused_field
  final $Res Function(Booking) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? classId = freezed,
    Object? classDay = freezed,
    Object? classTime = freezed,
    Object? subjectId = freezed,
    Object? subject = freezed,
    Object? teacherId = freezed,
    Object? teacherName = freezed,
    Object? teacherLastname = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      classDay: classDay == freezed
          ? _value.classDay
          : classDay // ignore: cast_nullable_to_non_nullable
              as String?,
      classTime: classTime == freezed
          ? _value.classTime
          : classTime // ignore: cast_nullable_to_non_nullable
              as int?,
      subjectId: subjectId == freezed
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: teacherId == freezed
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherName: teacherName == freezed
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherLastname: teacherLastname == freezed
          ? _value.teacherLastname
          : teacherLastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$BookingCopyWith(_Booking value, $Res Function(_Booking) then) =
      __$BookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) int? date,
      @HiveField(2) String? status,
      @HiveField(3) int? classId,
      @HiveField(4) String? classDay,
      @HiveField(5) int? classTime,
      @HiveField(6) int? subjectId,
      @HiveField(7) String? subject,
      @HiveField(8) int? teacherId,
      @HiveField(9) String? teacherName,
      @HiveField(10) String? teacherLastname});
}

/// @nodoc
class __$BookingCopyWithImpl<$Res> extends _$BookingCopyWithImpl<$Res>
    implements _$BookingCopyWith<$Res> {
  __$BookingCopyWithImpl(_Booking _value, $Res Function(_Booking) _then)
      : super(_value, (v) => _then(v as _Booking));

  @override
  _Booking get _value => super._value as _Booking;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? classId = freezed,
    Object? classDay = freezed,
    Object? classTime = freezed,
    Object? subjectId = freezed,
    Object? subject = freezed,
    Object? teacherId = freezed,
    Object? teacherName = freezed,
    Object? teacherLastname = freezed,
  }) {
    return _then(_Booking(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      classDay: classDay == freezed
          ? _value.classDay
          : classDay // ignore: cast_nullable_to_non_nullable
              as String?,
      classTime: classTime == freezed
          ? _value.classTime
          : classTime // ignore: cast_nullable_to_non_nullable
              as int?,
      subjectId: subjectId == freezed
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: teacherId == freezed
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherName: teacherName == freezed
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherLastname: teacherLastname == freezed
          ? _value.teacherLastname
          : teacherLastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'BookingAdapter')
class _$_Booking extends _Booking {
  const _$_Booking(
      {@HiveField(0) this.id,
      @HiveField(1) this.date,
      @HiveField(2) this.status,
      @HiveField(3) this.classId,
      @HiveField(4) this.classDay,
      @HiveField(5) this.classTime,
      @HiveField(6) this.subjectId,
      @HiveField(7) this.subject,
      @HiveField(8) this.teacherId,
      @HiveField(9) this.teacherName,
      @HiveField(10) this.teacherLastname})
      : super._();

  factory _$_Booking.fromJson(Map<String, dynamic> json) =>
      _$_$_BookingFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final int? date;
  @override
  @HiveField(2)
  final String? status;
  @override
  @HiveField(3)
  final int? classId;
  @override
  @HiveField(4)
  final String? classDay;
  @override
  @HiveField(5)
  final int? classTime;
  @override
  @HiveField(6)
  final int? subjectId;
  @override
  @HiveField(7)
  final String? subject;
  @override
  @HiveField(8)
  final int? teacherId;
  @override
  @HiveField(9)
  final String? teacherName;
  @override
  @HiveField(10)
  final String? teacherLastname;

  @override
  String toString() {
    return 'Booking(id: $id, date: $date, status: $status, classId: $classId, classDay: $classDay, classTime: $classTime, subjectId: $subjectId, subject: $subject, teacherId: $teacherId, teacherName: $teacherName, teacherLastname: $teacherLastname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Booking &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.classId, classId) ||
                const DeepCollectionEquality()
                    .equals(other.classId, classId)) &&
            (identical(other.classDay, classDay) ||
                const DeepCollectionEquality()
                    .equals(other.classDay, classDay)) &&
            (identical(other.classTime, classTime) ||
                const DeepCollectionEquality()
                    .equals(other.classTime, classTime)) &&
            (identical(other.subjectId, subjectId) ||
                const DeepCollectionEquality()
                    .equals(other.subjectId, subjectId)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.teacherId, teacherId) ||
                const DeepCollectionEquality()
                    .equals(other.teacherId, teacherId)) &&
            (identical(other.teacherName, teacherName) ||
                const DeepCollectionEquality()
                    .equals(other.teacherName, teacherName)) &&
            (identical(other.teacherLastname, teacherLastname) ||
                const DeepCollectionEquality()
                    .equals(other.teacherLastname, teacherLastname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(classId) ^
      const DeepCollectionEquality().hash(classDay) ^
      const DeepCollectionEquality().hash(classTime) ^
      const DeepCollectionEquality().hash(subjectId) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(teacherId) ^
      const DeepCollectionEquality().hash(teacherName) ^
      const DeepCollectionEquality().hash(teacherLastname);

  @JsonKey(ignore: true)
  @override
  _$BookingCopyWith<_Booking> get copyWith =>
      __$BookingCopyWithImpl<_Booking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookingToJson(this);
  }
}

abstract class _Booking extends Booking {
  const factory _Booking(
      {@HiveField(0) int? id,
      @HiveField(1) int? date,
      @HiveField(2) String? status,
      @HiveField(3) int? classId,
      @HiveField(4) String? classDay,
      @HiveField(5) int? classTime,
      @HiveField(6) int? subjectId,
      @HiveField(7) String? subject,
      @HiveField(8) int? teacherId,
      @HiveField(9) String? teacherName,
      @HiveField(10) String? teacherLastname}) = _$_Booking;
  const _Booking._() : super._();

  factory _Booking.fromJson(Map<String, dynamic> json) = _$_Booking.fromJson;

  @override
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int? get date => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String? get status => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  int? get classId => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String? get classDay => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int? get classTime => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  int? get subjectId => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  String? get subject => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  int? get teacherId => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  String? get teacherName => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  String? get teacherLastname => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookingCopyWith<_Booking> get copyWith =>
      throw _privateConstructorUsedError;
}
