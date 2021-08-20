import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/ClassesCard.dart';
import 'package:ripetizioni/ui/booking/BookingPageController.dart';

class BookingPage extends StatelessWidget {
  final BookingPageController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Get.offNamed('/home'),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Booking',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => _controller.loading.isTrue
                ? LinearProgressIndicator(minHeight: 8)
                : SizedBox.shrink()),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Text(Get.arguments['name'].toString().toUpperCase(),
                          style: Theme.of(context).textTheme.headline5)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      'Book class choosing from available teachers and the dates that are comfortable for you.',
                      style: Theme.of(context).textTheme.subtitle1),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      Get.arguments['nClasses'].toString() + ' REMAINING CLASSES',
                      style: Theme.of(context).textTheme.overline)
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: _controller.classesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            ClassesCard(_controller.classesList[index], onTapCallback: () => _controller.showConfirmDialog(_controller.classesList[index]))
                          ],
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
