import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/BookingCard.dart';
import 'package:ripetizioni/components/EmptyListView.dart';
import 'package:ripetizioni/components/PageHeader.dart';
import 'package:ripetizioni/ui/home/profile/ProfilePageController.dart';

class ProfilePage extends StatelessWidget {
  final ProfilePageController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: PageHeader('Profile',
              'Review the details of your passed and canceled bookings.', true),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/profile.png',
                height: 70,
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        _controller.user.value.getFullName(),
                        style: Get.theme.textTheme.headline6,
                      ),
                    ),
                    SizedBox(height: 4),
                    Obx(
                      () => Text(
                        _controller.user.value.email!,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Obx(() => Text(
                        _controller.allBookingList
                            .where((booking) => booking.status == 'active')
                            .length
                            .toString(),
                        style: Get.theme.textTheme.headline5)),
                    Text('Active'),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Column(
                  children: [
                    Obx(() => Text(
                        _controller.bookingList
                            .where((booking) => booking.status == 'passed')
                            .length
                            .toString(),
                        style: Get.theme.textTheme.headline5)),
                    Text('Passed'),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Column(
                  children: [
                    Obx(() => Text(
                        _controller.bookingList
                            .where((booking) => booking.status == 'canceled')
                            .length
                            .toString(),
                        style: Get.theme.textTheme.headline5)),
                    Text('Canceled'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => _controller.bookingList.isNotEmpty
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _controller.bookingList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: BookingCard(
                            _controller.bookingList[index],
                            onTapCallback: () => _controller.showBookingDetails(index),
                          ),
                        );
                      },
                    ),
                  ),
                )
              : Expanded(
                  child: Center(
                    child:
                        EmptyListView('There are currently no active bookings'),
                  ),
                ),
        ),
      ],
    );
  }
}
