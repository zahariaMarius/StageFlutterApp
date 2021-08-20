import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ripetizioni/ui/home/HomePageController.dart';
import 'package:ripetizioni/ui/home/bookings/BookingsPage.dart';
import 'package:ripetizioni/ui/home/profile/ProfilePage.dart';
import 'package:ripetizioni/ui/home/subjects/SubjectsPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomePageController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Obx(() => controller.loading.isTrue
                  ? LinearProgressIndicator(minHeight: 8)
                  : SizedBox.shrink()),
              Expanded(
                child: IndexedStack(
                  children: [
                    BookingsPage(),
                    SubjectsPage(),
                    ProfilePage(),
                  ],
                  index: controller.selectedBarItem,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark), label: 'Bookings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Subjects'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile'),
          ],
          currentIndex: controller.selectedBarItem,
          onTap: (index) => controller.selectedBarItem = index,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
