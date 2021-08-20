// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Classes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassesAdapter extends TypeAdapter<_$_Classes> {
  @override
  final int typeId = 3;

  @override
  _$_Classes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Classes(
      id: fields[0] as int?,
      day: fields[1] as String?,
      time: fields[2] as int?,
      subjectId: fields[3] as int?,
      subject: fields[4] as String?,
      teacherId: fields[5] as int?,
      teacherName: fields[6] as String?,
      teacherLastname: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Classes obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.subjectId)
      ..writeByte(4)
      ..write(obj.subject)
      ..writeByte(5)
      ..write(obj.teacherId)
      ..writeByte(6)
      ..write(obj.teacherName)
      ..writeByte(7)
      ..write(obj.teacherLastname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Classes _$_$_ClassesFromJson(Map<String, dynamic> json) {
  return _$_Classes(
    id: json['id'] as int?,
    day: json['day'] as String?,
    time: json['time'] as int?,
    subjectId: json['subjectId'] as int?,
    subject: json['subject'] as String?,
    teacherId: json['teacherId'] as int?,
    teacherName: json['teacherName'] as String?,
    teacherLastname: json['teacherLastname'] as String?,
  );
}

Map<String, dynamic> _$_$_ClassesToJson(_$_Classes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'time': instance.time,
      'subjectId': instance.subjectId,
      'subject': instance.subject,
      'teacherId': instance.teacherId,
      'teacherName': instance.teacherName,
      'teacherLastname': instance.teacherLastname,
    };
