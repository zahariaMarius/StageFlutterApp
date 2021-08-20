// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SubjectList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectList _$_$_SubjectListFromJson(Map<String, dynamic> json) {
  return _$_SubjectList(
    (json['data'] as List<dynamic>)
        .map((e) => Subject.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SubjectListToJson(_$_SubjectList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
