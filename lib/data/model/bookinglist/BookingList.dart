import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';

part 'BookingList.freezed.dart';
part 'BookingList.g.dart';

@freezed
class BookingList with _$BookingList {
  const factory BookingList(List<Booking> data) = _BookingList;

  factory BookingList.fromJson(Map<String, dynamic> json) => _$BookingListFromJson(json);

}