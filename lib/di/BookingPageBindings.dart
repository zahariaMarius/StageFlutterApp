import 'package:get/get.dart';
import 'package:ripetizioni/db/BookingDao.dart';
import 'package:ripetizioni/db/ClassesDao.dart';
import 'package:ripetizioni/db/SubjectDao.dart';
import 'package:ripetizioni/network/apiservice/booking/BookingApiService.dart';
import 'package:ripetizioni/network/apiservice/subject/ClassesApiService.dart';
import 'package:ripetizioni/repository/BookingRepository.dart';
import 'package:ripetizioni/repository/ClassesRepository.dart';
import 'package:ripetizioni/ui/booking/BookingPageController.dart';

class BookingPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BookingPageController(
        ClassesRepository(
          ClassesApiService(Get.find()),
          ClassesDao(),
          SubjectDao(),
        ),
        BookingRepository(
          BookingApiService(Get.find()),
          BookingDao(),
        ),
      ),
    );
  }
}
