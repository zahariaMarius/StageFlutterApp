import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/PageHeader.dart';
import 'package:ripetizioni/components/SubjectCard.dart';
import 'package:ripetizioni/ui/home/subjects/SubjectsPageController.dart';

class SubjectsPage extends StatelessWidget {
  final SubjectsPageController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          PageHeader(
              'Subjects', 'Find and book your subject of interest.', false),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                shrinkWrap: true,
                itemCount: _controller.subjectList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: SubjectCard(
                      _controller.subjectList[index],
                      onTapCallback: () => _controller.goToBookingPage(_controller.subjectList[index]),
                    ),
                  );
                }),
            ),
          ),
        ],
      ),
    );
  }
}
