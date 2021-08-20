// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Booking.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingAdapter extends TypeAdapter<_$_Booking> {
  @override
  final int typeId = 1;

  @override
  _$_Booking read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Booking(
      id: fields[0] as int?,
      date: fields[1] as int?,
      status: fields[2] as String?,
      classId: fields[3] as int?,
      classDay: fields[4] as String?,
      classTime: fields[5] as int?,
      subjectId: fields[6] as int?,
      subject: fields[7] as String?,
      teacherId: fields[8] as int?,
      teacherName: fields[9] as String?,
      teacherLastname: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Booking obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.classId)
      ..writeByte(4)
      ..write(obj.classDay)
      ..writeByte(5)
      ..write(obj.classTime)
      ..writeByte(6)
      ..write(obj.subjectId)
      ..writeByte(7)
      ..write(obj.subject)
      ..writeByte(8)
      ..write(obj.teacherId)
      ..writeByte(9)
      ..write(obj.teacherName)
      ..writeByte(10)
      ..write(obj.teacherLastname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Booking _$_$_BookingFromJson(Map<String, dynamic> json) {
  return _$_Booking(
    id: json['id'] as int?,
    date: json['date'] as int?,
    status: json['status'] as String?,
    classId: json['classId'] as int?,
    classDay: json['classDay'] as String?,
    classTime: json['classTime'] as int?,
    subjectId: json['subjectId'] as int?,
    subject: json['subject'] as String?,
    teacherId: json['teacherId'] as int?,
    teacherName: json['teacherName'] as String?,
    teacherLastname: json['teacherLastname'] as String?,
  );
}

Map<String, dynamic> _$_$_BookingToJson(_$_Booking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'status': instance.status,
      'classId': instance.classId,
      'classDay': instance.classDay,
      'classTime': instance.classTime,
      'subjectId': instance.subjectId,
      'subject': instance.subject,
      'teacherId': instance.teacherId,
      'teacherName': instance.teacherName,
      'teacherLastname': instance.teacherLastname,
    };
