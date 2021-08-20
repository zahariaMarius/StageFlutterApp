import 'package:get/get.dart';
import 'package:ripetizioni/data/model/subject/Subject.dart';
import 'package:ripetizioni/ui/home/HomePageController.dart';

class SubjectsPageController extends GetxController {
  RxList<Subject> _subjectList = Get.find<HomePageController>().subjectList;
  RxList<Subject> get subjectList => _subjectList;

  goToBookingPage(Subject subject) async {
    await Get.toNamed('/booking', arguments: subject.toJson());
    if(Get.arguments == true) {
      Get.find<HomePageController>().refreshBookings();
      Get.snackbar('Booking success', 'Your booking has been made successfully.', duration: Duration(seconds: 5));
    }
  }
}
