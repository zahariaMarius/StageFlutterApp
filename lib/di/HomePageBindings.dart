import 'package:get/get.dart';
import 'package:ripetizioni/db/BookingDao.dart';
import 'package:ripetizioni/db/ClassesDao.dart';
import 'package:ripetizioni/db/SubjectDao.dart';
import 'package:ripetizioni/network/apiservice/booking/BookingApiService.dart';
import 'package:ripetizioni/network/apiservice/subject/ClassesApiService.dart';
import 'package:ripetizioni/repository/BookingRepository.dart';
import 'package:ripetizioni/repository/ClassesRepository.dart';

import 'package:ripetizioni/ui/home/HomePageController.dart';
import 'package:ripetizioni/ui/home/bookings/BookingsPageController.dart';
import 'package:ripetizioni/ui/home/profile/ProfilePageController.dart';
import 'package:ripetizioni/ui/home/subjects/SubjectsPageController.dart';

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController(
        BookingRepository(BookingApiService(Get.find()), BookingDao()),
        ClassesRepository(
            ClassesApiService(Get.find()), ClassesDao(), SubjectDao()), Get.find()));
    Get.lazyPut(() => BookingsPageController());
    Get.lazyPut(() => SubjectsPageController());
    Get.lazyPut(() => ProfilePageController());
  }
}
