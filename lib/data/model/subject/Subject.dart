import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'Subject.freezed.dart';
part 'Subject.g.dart';

@freezed
class Subject with _$Subject {

  @HiveType(typeId: 4, adapterName: 'SubjectAdapter')
  const factory Subject({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) int? nClasses,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
