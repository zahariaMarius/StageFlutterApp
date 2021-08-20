import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ripetizioni/data/model/classes/Classes.dart';

part 'ClassesList.freezed.dart';
part 'ClassesList.g.dart';

@freezed
class ClassesList with _$ClassesList{
  const factory ClassesList(List<Classes> data) = _ClassesList;

  factory ClassesList.fromJson(Map<String, dynamic> json) => _$ClassesListFromJson(json);
}