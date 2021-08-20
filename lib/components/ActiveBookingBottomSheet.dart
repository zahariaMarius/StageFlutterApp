import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActiveBookingBottomSheet extends StatelessWidget {
  final VoidCallback markAsPassed;
  final VoidCallback cancelBooking;

  ActiveBookingBottomSheet(
      {required this.markAsPassed, required this.cancelBooking});

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
            child: Text('Manage booking', style: Get.theme.textTheme.subtitle2),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 8,
          ),
          GestureDetector(
              child:
                  Text('Mark as passed', style: Get.theme.textTheme.subtitle2),
              onTap: () => markAsPassed()),
          SizedBox(
            height: 8,
          ),
          GestureDetector(
            child: Text(
              'CANCEL BOOKING',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () => cancelBooking(),
          ),
        ],
      ),
    );
  }
}
