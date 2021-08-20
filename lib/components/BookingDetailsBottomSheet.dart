import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/IconText.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';

class BookingDetailsBottomSheet extends StatelessWidget {
  final Booking _booking;

  BookingDetailsBottomSheet(this._booking);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: 5,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child:
                Text('Bookings details', style: Get.theme.textTheme.subtitle2),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 8),
          Text(
            _booking.subject!.capitalize!,
            style: Get.theme.textTheme.headline5,
          ),
          SizedBox(height: 8),
          IconText(_booking.getTeacherFullName(), 'assets/teacher.png',
              Colors.black, FontWeight.normal),
          SizedBox(height: 8),
          IconText(_booking.getClassDate(), 'assets/calendar.png', Colors.black,
              FontWeight.normal),
          SizedBox(height: 8),
          IconText(
              ('Status ' + _booking.status!).capitalize!,
              _booking.status == 'passed'
                  ? 'assets/calendar_passed.png'
                  : 'assets/calendar_canceled.png',
              Colors.black,
              FontWeight.normal),
          SizedBox(height: 8),
          Text(_booking.getBookingDateFormatted().toUpperCase(),
              style: Get.theme.textTheme.overline),
        ],
      ),
    );
  }
}
