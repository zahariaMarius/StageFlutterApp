import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'package:ripetizioni/data/TimeStampConverter.dart';

part 'Booking.freezed.dart';
part 'Booking.g.dart';

@freezed
class Booking with _$Booking {
  const Booking._();

  @HiveType(typeId: 1, adapterName: 'BookingAdapter')
  const factory Booking({
    @HiveField(0) int? id,
    @HiveField(1) int? date,
    @HiveField(2) String? status,
    @HiveField(3) int? classId,
    @HiveField(4) String? classDay,
    @HiveField(5) int? classTime,
    @HiveField(6) int? subjectId,
    @HiveField(7) String? subject,
    @HiveField(8) int? teacherId,
    @HiveField(9) String? teacherName,
    @HiveField(10) String? teacherLastname,
  }) = _Booking;

  String getTeacherFullName() => '$teacherLastname $teacherName';

  String getBookingDateFormatted() =>
      'Booked on ${date!.timeStampDateFormatted()}';

  String getClassDate() => '$classDay at $classTime';

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
