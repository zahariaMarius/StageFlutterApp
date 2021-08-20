// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ClassesList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassesList _$_$_ClassesListFromJson(Map<String, dynamic> json) {
  return _$_ClassesList(
    (json['data'] as List<dynamic>)
        .map((e) => Classes.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ClassesListToJson(_$_ClassesList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
