// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BookingList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingList _$_$_BookingListFromJson(Map<String, dynamic> json) {
  return _$_BookingList(
    (json['data'] as List<dynamic>)
        .map((e) => Booking.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_BookingListToJson(_$_BookingList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
