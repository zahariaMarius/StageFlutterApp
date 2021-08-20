import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ripetizioni/data/model/subject/Subject.dart';

part 'SubjectList.freezed.dart';
part 'SubjectList.g.dart';

@freezed
class SubjectList with _$SubjectList{
  const factory SubjectList(List<Subject> data) = _SubjectList;

  factory SubjectList.fromJson(Map<String, dynamic> json) => _$SubjectListFromJson(json);
}