// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectAdapter extends TypeAdapter<_$_Subject> {
  @override
  final int typeId = 4;

  @override
  _$_Subject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Subject(
      id: fields[0] as int?,
      name: fields[1] as String?,
      nClasses: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Subject obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.nClasses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subject _$_$_SubjectFromJson(Map<String, dynamic> json) {
  return _$_Subject(
    id: json['id'] as int?,
    name: json['name'] as String?,
    nClasses: json['nClasses'] as int?,
  );
}

Map<String, dynamic> _$_$_SubjectToJson(_$_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nClasses': instance.nClasses,
    };
