import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/BookingCard.dart';
import 'package:ripetizioni/components/EmptyListView.dart';
import 'package:ripetizioni/components/PageHeader.dart';
import 'package:ripetizioni/ui/home/bookings/BookingsPageController.dart';

class BookingsPage extends StatelessWidget {
  final BookingsPageController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          PageHeader(
              'Bookings', 'Check and manage your active booked lesson.', false),
          SizedBox(
            height: 8,
          ),
          Obx(
            () => _controller.bookingList.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _controller.bookingList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: BookingCard(
                            _controller.bookingList[index],
                            onTapCallback: () =>
                                _controller.showBookingOptions(
                                    _controller.bookingList[index].id!),
                          ),
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: Center(
                      child: EmptyListView(
                          'There are currently no active bookings'),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
