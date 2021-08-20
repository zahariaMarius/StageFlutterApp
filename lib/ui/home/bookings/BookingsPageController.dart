import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ripetizioni/components/ActiveBookingBottomSheet.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';
import 'package:ripetizioni/ui/home/HomePageController.dart';

class BookingsPageController extends GetxController {
  final RxList<Booking> _bookingList = Get.find<HomePageController>().bookingList;
  RxList<Booking> get bookingList => RxList(_bookingList.where((booking) => booking.status == 'active').toList());

  showBookingOptions(int bookingId) {
    Get.bottomSheet(
      ActiveBookingBottomSheet(
          markAsPassed: () {
            _showConfirmDialog('The selected booking will be mark as passed.',
                'passed', bookingId);
          },
          cancelBooking: () => _showConfirmDialog(
              'The selected booking will be canceled.', 'canceled', bookingId)),
    );
  }

  _showConfirmDialog(String message, String status, int bookingId) {
    Navigator.pop(Get.context!);
    Get.dialog(
        AlertDialog(
          title: Text('Are you sure?'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(Get.context!),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Get.find<HomePageController>().updateSelectedBooking(bookingId, status),
              child: Text('Confirm'),
            ),
          ],
        ),
        barrierDismissible: false);
  }

}
