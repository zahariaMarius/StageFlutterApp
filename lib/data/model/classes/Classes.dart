import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'Classes.freezed.dart';
part 'Classes.g.dart';

@freezed
class Classes with _$Classes {
  const Classes._();

  @HiveType(typeId: 3, adapterName: 'ClassesAdapter')
  const factory Classes({
    @HiveField(0) int? id,
    @HiveField(1) String? day,
    @HiveField(2) int? time,
    @HiveField(3) int? subjectId,
    @HiveField(4) String? subject,
    @HiveField(5) int? teacherId,
    @HiveField(6) String? teacherName,
    @HiveField(7) String? teacherLastname,
  }) = _Classes;

  factory Classes.fromJson(Map<String, dynamic> json) =>
      _$ClassesFromJson(json);

  String getTeacherFullName() => '$teacherLastname $teacherName';

  String getClassDate() => '$day at $time';

}
